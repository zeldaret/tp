from dataclasses import dataclass, field
from collections import defaultdict
from typing import Dict, List
from pathlib import Path
from intervaltree import Interval, IntervalTree

from .context import Context
from .disassemble import Access, BranchAccess
from .data import *

from . import util
from . import linker_map
from . import binary
from . import sort_translation_units
from . import generate_symbols
from . import generate_functions
from . import settings


def insert_access_as_symbol(context: Context,
                            module_id: int,
                            sections: Dict[int, ExecutableSection],
                            map_sections: Dict[str, linker_map.Section],
                            map_addrs: Dict[str, Dict[int, linker_map.Symbol]],
                            ait: Dict[str, IntervalTree],
                            access: Access) -> bool:
    """Insert new symbol from the access data"""

    # determine what sections the access addr are in
    in_sections = [x for x in sections if access.addr in x]
    if len(in_sections) != 1:
        context.warning("multiple section for symbol at 0x%08X" %
                        (addr & 0xFFFFFFFF))
        context.warning([(x.name, x.start, x.end) for x in sections])
        context.warning([x.name for x in in_sections])
        return False

    # check that we don't already have a symbol for the access address
    section = in_sections[0]
    relative_addr = access.addr - section.start
    if relative_addr in map_addrs[section.name]:
        map_addrs[section.name][relative_addr].access = access
        return False

    overlap = ait[section.name].at(relative_addr)
    if len(overlap) > 0:
        overlap_symbol = list(overlap)[0].data
        if overlap_symbol.name == "@stringBase0":
            return False

    obj = None
    lib = None
    name = None

    # because this is an "access" we have no other information about the name, here we try to set names for known addresses
    if module_id == 0:
        if section.name == ".init":
            obj = "init.o"
        if access.addr in settings.PREDEFINED_SYMBOLS:
            name = settings.PREDEFINED_SYMBOLS[access.addr]

    # create new linker map symbol
    symbol = linker_map.Symbol(relative_addr, 0, 0, name, lib, obj)
    symbol.source = f"insert_access_as_symbol/{access.addr:08X}"
    symbol.access = access

    map_sections[section.name].symbols.append(symbol)
    map_addrs[section.name][relative_addr] = symbol
    return True


def infer_location_from_other_symbols(section: linker_map.Section, symbols: List[linker_map.Symbol]):
    """ """
    symbols.sort(key=lambda x: x.addr)

    obj = None
    lib = None
    symbols_without_obj = []
    for symbol in symbols:
        # often, code and data are not stored in the same section (except .init). thus, if the symbol is in any code section
        # set the 'is_function' flag so we later can parse the symbol as a function.
        if section.is_addr_code(symbol.addr) and symbol.name:
            symbol.is_function = True
        # TODO: Not sure if the FAKE_FUNCTIONS are used anymore
        if symbol.is_function and symbol.addr in settings.FAKE_FUNCTIONS:
            symbol.is_function = False

        if not symbol.obj:
            # assign symbols to the previous object and library
            if obj:
                symbol.obj = obj
                symbol.lib = lib
            else:
                symbols_without_obj.append(symbol)
        else:
            # assign previous symbols to the same object and library as this symbol
            for rsym in symbols_without_obj:
                rsym.obj = symbol.obj
                rsym.lib = symbol.lib
            symbols_without_obj = []

        if symbol.obj:
            obj = symbol.obj
            lib = symbol.lib

    if symbols_without_obj:
        # there are no other symbol which we can use to infer the object and library file from,
        # create a fake translation unit
        for rsym in symbols_without_obj:
            rsym.obj = f"unknown_translation_unit_{section.name.replace('.','')}.o"


def calculate_symbol_sizes(section: linker_map.Section, symbols: List[linker_map.Symbol]):
    """ Calculate symbol sizes taking into account the section and near-by symbols """

    symbols.sort(key=lambda x: (x.addr, x.size))

    # Calculate the size (and padding) of the symbol
    for curr, next in util.mapOverlap(symbols, 2):
        if not curr:
            continue

        if next:
            caddr = curr.addr + section.addr
            naddr = next.addr + section.addr
            if curr.size == 0:
                # Assume all data from current symbol to next is for this symbol (we cannot determine the padding)
                curr.size = naddr - caddr
            else:
                # The difference between current symbol end and next is the padding
                curr_addr = caddr + curr.size
                next_addr = naddr
                if curr_addr > next_addr:
                    # There are functions that have sub-function within themself. (See __save_gpr)
                    # Truncate symbol size.
                    curr.size = naddr - caddr
                else:
                    curr.padding = next_addr - curr_addr
        else:
            caddr = curr.addr + section.addr

            if curr.size == 0:
                # Assume the symbol goes to the end of the section
                curr.size = section.end - caddr
            else:
                curr_addr = caddr + curr.size
                curr.padding = section.end - curr_addr
                assert curr.padding >= 0

    # Some section have their object files aligned to 8 bytes. This hacks will move symbols,
    # which are not aligned, to the next object file. Not sure if the frameworkF.map have them listed
    # in the wrong source file or if a different alignment setting was used.
    if section.name == ".bss" or section.name == ".sdata" or section.name == ".sbss":
        for i, curr in enumerate(symbols):
            begin_aligned = ((curr.addr) % 8) == 0
            end_aligned = ((curr.addr + curr.size + curr.padding) % 8) == 0
            if not begin_aligned:
                continue
            if end_aligned:
                continue

            j = i+1
            next = None
            for n in symbols[i+1:]:
                if ((n.addr + n.size + n.padding) % 8) == 0:
                    next = n
                    break
                j += 1

            if not next:
                continue
            if curr.obj == next.obj and curr.lib == next.lib:
                continue

            for sym in symbols[i:j]:
                sym.obj = next.obj
                sym.lib = next.lib

    # check that we're using all the space of the section
    if len(symbols) > 1:
        last_symbol = symbols[-1]
        endp = last_symbol.end + last_symbol.padding
        assert section.addr + endp == section.end
        last_symbol.padding = 0


def search(context: Context,
           module_id: int,
           name: str,
           map_path: Path,
           sections: List[ExecutableSection],
           relocations: Dict[int, "rel.Relocation"],
           all_relocations: Dict[int, "librel.Relocation"],
           cache: bool) -> Module:
    """ Search for symbols from executable sections and the linker map. """

    # Get symbolsby reading the linker map
    map_sections, map_addrs = linker_map.parse(
        context,
        module_id, 
        map_path, 
        sections, 
        base_folder=(module_id == 0))
    
    # Find accesses/symbols by analyzing the code
    accesses = binary.analyze(
        context,
        module_id, 
        sections,
        cache=cache)

    ait_sections = dict()
    for name, section in map_sections.items():
        ait_sections[name] = IntervalTree([
            Interval(symbol.start, symbol.end, symbol)
            for symbol in section.symbols
            if symbol.size > 0
        ])

    # TODO: do we really need to sort?
    sorted_accesses = list(accesses.items())
    sorted_accesses.sort(key=lambda x: x[0])
    for relative_addr, access in sorted_accesses:
        is_relocation_symbol = False
        """
        for relocs in relocations.values():
            if relative_addr in relocs:
                relocs[relative_addr].access = access
                is_relocation_symbol = True
                break
        """

        # if the access is a relocatable symbol skip
        if is_relocation_symbol:
            continue

        # add access as symbol, the check if the address is already a symbol is done inside 'insert_access_as_symbol'
        insert_access_as_symbol(context, module_id, sections,
                                map_sections, map_addrs, ait_sections, access)

    # add entrypoint to the right section. the entrypoint is required as it is not included in the linker map.
    if module_id == 0:
        for section in sections:
            if not settings.ENTRY_POINT in section:
                continue

            branch_access = BranchAccess(at=0x00000000, addr=settings.ENTRY_POINT)
            insert_access_as_symbol(
                context, module_id, sections, map_sections, map_addrs, ait_sections, branch_access)
            break

    # insert relocation that are not already symbol from the linker map
    if len(all_relocations) > 0:
        table = dict()
        for section in map_sections.values():
            if not section.name in table:
                table[section.name] = dict()
            for symbol in section.symbols:
                table[section.name][symbol.addr] = symbol

        # iterate over all relocations (from all modules) that wants to relocation something inside _this_ module.
        for r in all_relocations[module_id]:
            section = sections[r.section]
            if section.name in table:
                addr = r.addend
                if module_id == 0: # relative address are used for symbols
                    addr -= section.addr

                overlap = ait_sections[section.name].at(addr)
                if len(overlap) > 0:
                    overlap_symbol = list(overlap)[0].data
                    if overlap_symbol.name == "@stringBase0":
                        continue
                    
                if not addr in table[section.name]:
                    symbol = linker_map.Symbol(addr, 0, 0, None, None, None)
                    symbol.source = f"relocation/{section.name}/{r.addend:08X}"
                    symbol.access = r.access
                    table[section.name][addr] = symbol
                    map_sections[section.name].symbols.append(symbol)
            else:
                context.error(f"{section.name} not in module {module_id}")

    # build a tree
    section_count = defaultdict(int)
    tree = defaultdict(lambda: defaultdict(lambda: defaultdict(list)))
    tree_order = defaultdict(lambda: defaultdict(list))
    for section in map_sections.values():

        """
        # .rel will be compiled with some standard libraries, but the linker map for the rel does not included what library these function come from.
        for symbol in section.symbols:
            if module_id != 0:
                if symbol.obj == "global_destructor_chain.o":
                    symbol.lib = "Runtime.PPCEABI.H.a"
        """

        # calculate the size of symbols and determine where symbols without a library and object file should be located.
        infer_location_from_other_symbols(section, section.symbols)
        calculate_symbol_sizes(section, section.symbols)

        #for symbol in section.symbols:
        #    if symbol.addr >= 0x80450c90 and symbol.addr < 0x80450ca0:
        #        context.debug(f"{symbol.addr:08X} {symbol.size:04X} {symbol.name} ({symbol.source})")

        if section.symbols:
            for symbol in section.symbols:
                if not section.name in tree[symbol.lib][symbol.obj]:
                    tree[symbol.lib][symbol.obj][section.name] = []
        else:
            tree[None][None][section.name] = []

        #
        for symbol in section.symbols:
            symbol.relative_addr = symbol.addr
            symbol.addr += section.addr + section.first_padding
            section_count[section.name] += 1
            tree[symbol.lib][symbol.obj][section.name].append(symbol)
            tree_order[symbol.lib][section.name].append(symbol.obj)

    # create the structure with all neccessary information, such as, libraries, translation units, sections, and symbols
    module = Module(module_id)
    module.executable_sections = sections
    module.start = min([x.start for x in sections if x.size > 0])
    module.end = max([x.end for x in sections if x.size > 0])
    for k, v in tree.items():
        library_name = k
        if library_name:
            library_name = library_name.replace(".a", "")
        library = Library(library_name)
        module.add_library(library)

        # sort object files. each section will have its own order of the object files, combine everything to find a god-order
        order_sections = tree_order[k]
        order = sort_translation_units.sort(context, v.keys(), order_sections)

        for tuk in order:
            translation_name = tuk
            if not translation_name:
                translation_name = "unknown_translation_unit.o"
            translation_unit = TranslationUnit(
                translation_name.replace(".o", ""))
            library.add_translation_unit(translation_unit)

            # global_destructor_chain.o will be generate from template
            if module_id > 0 and translation_name == "global_destructor_chain.o":
                translation_unit.generate = False

            # executor.o will be generate from template
            if module_id > 0 and translation_name == "executor.o":
                translation_unit.generate = False

            for sk, sv in v[tuk].items():
                map_section = map_sections[sk]
                exe_section = sections[map_section.index]
                section = Section(sk,
                                  map_section.addr, map_section.size,
                                  map_section.data,
                                  base_addr=exe_section.base_addr,
                                  index=map_section.index,
                                  alignment=exe_section.alignment)


                if map_section.index in relocations:
                    for relocation in relocations[map_section.index]:
                        section.relocations[map_section.addr + relocation.replace_addr] = relocation
                translation_unit.add_section(section)

                # If the section contains data but there are no symbols for it, we need to create
                # a "fake" symbol or otherwise the data will not be included in the final elf.
                if map_section.size > 0 and section_count[sk] == 0:
                    name = f"_section_symbol_{sk.replace('.', '')}"
                    symbol = linker_map.Symbol(
                        section.addr, map_section.size, 0, name, k, tuk)
                    symbol.source = f"section_symbol/{tuk}/{section.name}/{section.addr:08X}"
                    sv.append(symbol)
                    section_count[sk] += 1
                    context.debug(f"added symbol '{name}' for unreferenced section '{sk}'")

                # group symbols together, e.g., functions will be a group of [header, label1, label2, ...]
                groups = generate_symbols.groups_from_symbols(sv)
                for group in groups:
                    first = group[0]

                    new_symbols = []
                    if first.is_function:
                        # take the group and generate a function
                        assert section.data
                        new_symbols.extend(generate_functions.from_group(section, group))
                    else:
                        # take the group of symbols and generate "real" symbols
                        new_symbols.extend(generate_symbols.from_group(section, group))
                        
                    for symbol in new_symbols:
                        section.add_symbol(symbol)

                for symbol in section.symbols:
                    symbol.set_mlts(module.index,library.name, translation_unit.name, section.name)

                # clear data
                section.data = None

            if module_id > 0 and translation_name == "global_destructor_chain.o":
                translation_unit.special = "rel"

                for section in translation_unit.sections.values():
                    if section.name == ".dtors":
                        assert len(section.symbols) > 0
                        first = section.symbols[0]
                        length = sum([ x.size+x.padding for x in section.symbols ])
                        _dtors = LinkerGenerated(
                            identifier=Identifier("_xx", symbol.addr + 4, "_dtors"),
                            addr=first.addr,
                            size=length,
                            data=[],
                            data_type=PointerType(VOID),
                            padding=0,
                            padding_data=[],
                            zero_length=True,
                            always_extern=True)
                        _dtors.set_mlts(module.index,library.name, translation_unit.name, section.name)
                        section.symbols = [_dtors]
                    elif section.name == ".text":
                        for symbol in section.symbols:
                            if symbol.identifier.name == "__register_global_object":
                                symbol.argument_types.extend([
                                    PointerType(VOID), # object
                                    PointerType(VOID), # dtor
                                    PointerType(VOID), # chain
                                ])
                            elif symbol.identifier.name == "__destroy_global_chain":
                                pass

            if module_id > 0 and translation_name == "executor.o":
                translation_unit.special = "rel"


    return module

#!/usr/bin/env python3

import os
import sys
import re
import subprocess
import traceback
import pickle
import time
import click
import asyncio
import random
import rich

from pathlib import Path
from collections import defaultdict
from intervaltree import Interval, IntervalTree
from rich.progress import Progress
from rich.tree import Tree

from . import mp
from . import util
from . import symbol_finder
from . import generate_functions
from . import generate_symbols
from . import tools
from . import naming

import libdol
import librel
import libarc

from .exporter import cpp
from .exporter import makefile
from .exporter import definition
from . import settings

from .globals import *
from .data import *

from .context import *
from .sha1 import *
from .symbol_table import GlobalSymbolTable
from .data.section import ExecutableSection

"""
from . import demangle
demangle.test()
sys.exit(1)
"""


class Dol2AsmSplitter:

    def __init__(self,
                 debug_logging,
                 game_path, lib_path, src_path,
                 asm_path, rel_path, inc_path,
                 mk_gen, cpp_gen, asm_gen, sym_gen, rel_gen,
                 process_count, select_modules,
                 select_tu, select_asm):
        self.debug_logging = debug_logging
        self.game_path = game_path
        self.lib_path = lib_path
        self.src_path = src_path
        self.asm_path = asm_path
        self.rel_path = rel_path
        self.inc_path = inc_path
        self.mk_gen = mk_gen
        self.cpp_gen = cpp_gen
        self.asm_gen = asm_gen
        self.sym_gen = sym_gen
        self.rel_gen = rel_gen
        self.process_count = process_count
        self.select_modules = select_modules
        self.select_tu = select_tu
        self.select_asm = select_asm

    def search_for_game_files(self):
        print(f"{self.step_count:2} Search for files in '{self.game_path}'")
        self.step_count += 1

        # check if the game folder exists
        assert self.game_path
        self.game_path.resolve()
        if not self.game_path.exists():
            error(f"invalid path to game directory: '{self.game_path}'")
            fatal_exit()

        # check if the 'main.dol' and 'frameworkF.map' exists
        self.baserom_path = util.check_file(self.game_path, "main.dol")
        self.framework_path = util.check_file(
            self.game_path, "map/Final/Release/frameworkF.map")

        info(f"found 'main.dol' at '{self.baserom_path}'")
        info(f"found 'frameworkF.map' at '{self.framework_path}'")

        # search for '.map' files
        self.map_path = util.check_dir(self.game_path, "map/Final/Release")
        self.maps_path = [
            x
            for x in util.get_files_with_ext(self.map_path, ".map")
            if x.name != "frameworkF.map"
        ]
        info(f"found {len(self.maps_path)} map files in '{self.map_path}'")

        # search for '.rel' files
        self._rel_path = util.check_dir(self.game_path, "rel/Final/Release")
        self.rels_path = util.get_files_with_ext(self._rel_path, ".rel")
        self.rels_archive_path = util.check_file(self.game_path, "RELS.arc")
        info(f"found {len(self.rels_path)} RELs in '{self._rel_path}'")

    def read_dol(self):
        # read 'main.dol'
        print(f"{self.step_count:2} Read .dol at '{self.baserom_path}'")
        self.step_count += 1

        with self.baserom_path.open('rb') as file:
            self.baserom_data = bytearray(file.read())
            self.dol = libdol.read(self.baserom_data)

            debug(f"'{self.baserom_path}' sections:")
            for section in self.dol.sections:
                debug(
                    f"\t{section.type:<4} 0x{section.offset:08X} 0x{section.addr:08X} 0x{section.size:06X} ({section.size} bytes)")

        # make sure the checksum for the 'main.dol' match
        sha1_check(self.baserom_path, self.baserom_data,
                   settings.SHA1['main.dol'])

    def read_rels(self):
        # loads rels
        print(f"{self.step_count:2} Read RELs at '{self._rel_path}'")
        self.step_count += 1

        self.MAPS = {}
        for map_filepath in self.maps_path:
            self.MAPS[map_filepath.name.lower()] = map_filepath

        self.RELS = {}
        for rel_filepath in self.rels_path:
            with rel_filepath.open('rb') as file:
                if not rel_filepath.name.lower() in settings.SHA1:
                    error(
                        f"unknown REL file: '{rel_filepath}' ({rel_filepath.name.lower()})")
                    fatal_exit()

                data = bytearray(file.read())
                sha1_check(rel_filepath, data,
                           settings.SHA1[rel_filepath.name.lower()])

                rel = librel.read(data)
                rel.path = rel_filepath
                rel.map = self.MAPS[rel_filepath.name.lower().replace(
                    ".rel", ".map")]
                self.RELS[rel.index] = rel

    def read_rels_extract(self):
        # extract rels from 'RELs.arc'
        print(f"{self.step_count:2} Read RELs from '{self.rels_archive_path}'")
        self.step_count += 1

        found_rel_count = 0
        with self.rels_archive_path.open('rb') as file:
            rarc = libarc.read(file.read())
            for depth, file in rarc.files_and_folders:
                if not isinstance(file, libarc.File):
                    continue

                if file.name.endswith(".rel"):
                    if not file.name.lower() in settings.SHA1:
                        error(
                            f"unknown REL file: '{file.name}' ({file.name.lower()})")
                        fatal_exit()

                    sha1_check(file.name, file.data,
                               settings.SHA1[file.name.lower()])

                    rel = librel.read(file.data)
                    rel.path = Path(file.name)
                    rel.map = self.MAPS[file.name.lower().replace(
                        ".rel", ".map")]
                    self.RELS[rel.index] = rel
                    found_rel_count += 1

        info(f"found {found_rel_count} RELs in '{self.rels_archive_path}'")

    def search_binary(self, cache):
        print(f"{self.step_count:2} Search for symbols and build modules")
        self.step_count += 1
        # create '.dol' executable sections
        executable_sections = [
            # symbol_finder expects the first section to be a "null" section
            ExecutableSection("null", 0, 0, 0, None, [], {})
        ]
        for section in self.dol.sections:
            cs = []
            if section.type == "text":
                if section.name == ".init":
                    # The .init section contains both data and code. (I think...)
                    # We only want to analyze the code part.
                    cs.append((0x80003100 - section.addr,
                               0x800035e4 - section.addr))
                    cs.append((0x80005518 - section.addr,
                               0x80005544 - section.addr))
                else:
                    cs.append((0, section.size))

            executable_section = ExecutableSection(
                section.name, section.addr, section.size, 0, section.data, 
                code_segments=cs, relocations={}, alignment=4)
            executable_sections.append(executable_section)

        # find symbols for all modules
        module_tasks = []
        module_tasks.append(
            (0, None, self.framework_path, executable_sections, {}))

        self.symbol_table = GlobalSymbolTable()
        # all relocations grouped by module id
        all_relocations = defaultdict(list)
        rels_items = list(self.RELS.items())
        rels_items.sort(key=lambda x: x[0])
        for index, rel in rels_items:
            if not self.rel_gen:
                break

            base_addr = settings.REL_TEMP_LOCATION[rel.path.name] & 0xFFFFFFFF

            relocations = defaultdict(list)
            executable_sections = []
            for section in rel.sections:
                offset = section.offset
                section.addr += base_addr
                for relocation in section.relocations:
                    all_relocations[relocation.module].append(relocation)
                    relocations[section.index].append(relocation)

                self.symbol_table.add_module_section(
                    index, section.index, section.addr)

                cs = []
                if section.executable_flag:
                    cs.append((0, section.length))

                exe_section = ExecutableSection(
                    section.name, section.addr, section.length, base_addr,
                    section.data, 
                    code_segments=cs, 
                    relocations={}, 
                    alignment=section.alignment)
                exe_section.raw_offset = offset
                executable_sections.append(exe_section)

            name = rel.path.name.replace(".rel", ".o")
            module_tasks.append(
                (index, name,  rel.map, executable_sections, relocations))

        start_time = time.time()
        # using 0 processes here is faster???
        self.modules = mp.progress(0, symbol_finder.search, module_tasks, shared={
                                   'all_relocations': all_relocations,
                                   'cache': cache})
        end_time = time.time()
        info(
            f"created {len(self.modules)} modules in {end_time-start_time:.2f} seconds")

    def generate_symbol_table(self):
        print(f"{self.step_count:2} Generate symbol table")
        self.step_count += 1

        for module in self.modules:
            for lib in module.libraries.values():
                for tu in lib.translation_units.values():
                    for section in tu.sections.values():
                        self.symbol_table.add_section(module, section)

    def combine_symbols(self):
        print(
            f"{self.step_count:2} Calculate function alignment and merge unaligned symbols")
        self.step_count += 1

        for module in self.modules:
            libs = list(module.libraries.values())
            for lib in libs:
                for tu in lib.translation_units.values():
                    for sec in tu.sections.values():
                        for symbol in sec.symbols:
                            symbol.relative_addr = symbol.addr - sec.addr

            tools.calculate_function_alignments(self.context, libs)
            for lib in libs:
                for tu in lib.translation_units.values():
                    for sec in tu.sections.values():
                        tools.caluclate_symbol_data_alignment(
                            self.context, sec)
            add_list, remove_list = tools.merge_symbols(self.context, libs)
            for symbol in remove_list:
                self.symbol_table.remove_symbol(symbol)
            for symbol in add_list:
                self.symbol_table.add_symbol(symbol)

    def name_symbols(self):
        print(f"{self.step_count:2} Naming")
        self.step_count += 1

        for module in self.modules:
            libs = list(module.libraries.values())
            naming.execute(self.context, libs)

    def search_for_reference_arrays(self):
        # Find reference arrays
        # TODO: MOVE
        print(f"{self.step_count:2} Search symbols for references to other symbols")
        self.step_count += 1

        for module in self.modules:
            for lib in module.libraries.values():
                for tu in lib.translation_units.values():
                    for section in tu.sections.values():
                        for symbol in section.symbols:
                            if isinstance(symbol, ReferenceArray):
                                continue
                            if not isinstance(symbol, ArbitraryData) and not isinstance(symbol, Integer):
                                continue

                            if not symbol.data:
                                continue
                            if len(symbol.data) % 4 != 0:
                                continue

                            values = Integer.u32_from(symbol.data)
                            is_symbols = [
                                self.symbol_table.has_symbol(module.index, x)
                                for x in values
                            ]

                            if not any(is_symbols):
                                relocations = section.relocations
                                is_relocations = [
                                    x in relocations
                                    for x in range(symbol.start, symbol.end, 4)
                                ]
                                if not any(is_relocations):
                                    continue

                            new_symbol = ReferenceArray.create(
                                symbol.identifier,
                                symbol.addr,
                                symbol.data,
                                symbol.padding_data)

                            new_symbol.set_mlts(
                                symbol._module, symbol._library, symbol._translation_unit, symbol._section)

                            section.replace_symbol(symbol, new_symbol)
                            self.symbol_table.remove_symbol(symbol)
                            self.symbol_table.add_symbol(new_symbol)
                            #require_resolve.append((section, new_symbol))

    def validate_symbols(self):
        # TODO: Move
        print(f"{self.step_count:2} Validate symbols")
        self.step_count += 1

        for module in self.modules:
            # Validate that symbols are in the correct sections (.sbss, .sbss2, .sdata, and .sdata2). But because RELs only
            # have use the .data and .bss sections we can skipped processing them.
            if module.index != 0:
                continue

            for lib in module.libraries.values():
                for tu in lib.translation_units.values():
                    for section in tu.sections.values():
                        new_symbols = []
                        for symbol in section.symbols:
                            if symbol._section == ".bss":
                                if symbol.size + symbol.padding <= 8:
                                    self.context.warning(
                                        f"'{symbol.label}' ({symbol.size:04X}+{symbol.padding:02X}) is short enough to be placed in '.sbss' or '.sbss2', but the expected section is '.bss'. This translation unit could have been compiled with a different threshold (not 8). Force metrowerks to place the symbol in the right place.")
                                    symbol.force_section = ".bss"

                            if symbol._section == ".sbss" or symbol._section == ".sbss2" or symbol._section == ".sdata" or symbol._section == ".sdata2":
                                ssize = symbol.size
                                spad = symbol.padding
                                if symbol.size + symbol.padding > 8:
                                    if symbol.size <= 8:
                                        pads = []
                                        pad_addr = symbol.end
                                        pad_off = 0
                                        pad_size = symbol.padding
                                        pad_data = symbol.padding_data

                                        symbol.padding = (
                                            (symbol.size + 3) & (~3)) - symbol.size
                                        symbol.padding_data = symbol.padding_data[0:symbol.padding]

                                        pad_size -= symbol.padding
                                        pad_data = pad_data[symbol.padding:]

                                        while pad_size > 0:
                                            max_size = min(pad_size, 8)
                                            assert max_size % 4 == 0
                                            if pad_data:
                                                pads.append(ArbitraryData.create_with_data(
                                                    Identifier(
                                                        "pad", pad_addr, None),
                                                    pad_addr,
                                                    pad_data[pad_off:][:max_size],
                                                    []))
                                            else:
                                                pads.append(ArbitraryData.create_without_data(
                                                    Identifier(
                                                        "pad", pad_addr, None),
                                                    pad_addr,
                                                    max_size,
                                                    0))

                                            pad_addr += max_size
                                            pad_off += max_size
                                            pad_size -= max_size

                                        self.context.warning(
                                            f"'{symbol.label}' ({ssize:04X}+{spad:02X}) truncating padding to fit in '{symbol._section}' section (threshold 8). created {len(pads)} new symbol(s) for padding, taking up {sum([x.size for x in pads])} bytes in total.")
                                        new_symbols.extend(pads)
                                    else:
                                        self.context.error(
                                            f"'{symbol.label}' ({ssize:04X}+{spad:02X}) is too large and does not fit in '{symbol._section}' section (threshold 8)")

                        if new_symbols:
                            for symbol in new_symbols:
                                symbol.set_mlts(
                                    module.index,
                                    lib.name,
                                    tu.name,
                                    section.name
                                )
                            section.symbols.extend(new_symbols)
                            section.symbols.sort(
                                key=lambda x: (x.addr, x.size))

    def apply_relocations(self):
        print(f"{self.step_count:2} Apply relocations")
        self.step_count += 1

        for module in self.modules:
            for lib in module.libraries.values():
                for tu in lib.translation_units.values():
                    for section in tu.sections.values():
                        for addr, relocation in section.relocations.items():
                            location = addr
                            symbol = self.symbol_table.symbols.get_one_or_none(
                                location)  # self.symbol_table[-1, location]
                            if not symbol:
                                debug(
                                    f"module: {module.index}, addr: {location:08X}, parent: {relocation.parent}")
                                debug(section.relocations)
                            assert symbol

                            # skip applying relocations for zero-length symbol (symbol which will be generated by the compiler or linker)
                            if isinstance(symbol, ArbitraryData) and symbol.zero_length:
                                continue

                            if isinstance(symbol, ASMFunction) or isinstance(symbol, ReferenceArray):
                                replace_offset = section.addr + relocation.offset
                                key_addr, replace_symbol = self.symbol_table[-1,
                                                                             relocation]
                                assert replace_symbol

                                if not librel.apply_relocation(
                                        relocation.type,
                                        relocation.module,
                                        symbol.data, symbol.start,
                                        P=location,
                                        S=key_addr,
                                        A=0):
                                    error(
                                        f"unsupport relocation (type {relocation.type})")
                                    fatal_exit()
                            else:
                                error(
                                    f"relocation for unsupported symbol {symbol.label} (symbol type {type(symbol).__name__})")
                                fatal_exit()

    def reference_count(self):
        print(f"{self.step_count:2} Calculate reference count")
        self.step_count += 1

        # add reference to entrypoint
        entrypoint = self.symbol_table[0, settings.ENTRY_POINT]
        entrypoint.add_reference(None)

        valid_range = AddressRange(
            self.symbol_table.symbols.begin(),
            self.symbol_table.symbols.end())

        # these symbols are required to be external, because otherwise the linker will not find them
        __fini_cpp_exceptions = self.symbol_table[0, 0x8036283C]
        __init_cpp_exceptions = self.symbol_table[0, 0x80362870]
        __fini_cpp_exceptions.add_reference(None)
        __init_cpp_exceptions.add_reference(None)

        # TODO: Use multiprocessing to speed this up
        total_rc_step_count = 0
        for module in self.modules:
            for lib in module.libraries.values():
                for tu in lib.translation_units.values():
                    total_rc_step_count += sum([len(x.symbols)
                                                for x in tu.sections.values()])

        sinit_functions = set()
        entrypoints = set()
        with Progress(console=get_console(), transient=True, refresh_per_second=1) as progress:
            task1 = progress.add_task(
                f"step 1...", total=total_rc_step_count)
            for module in self.modules:
                for lib in module.libraries.values():
                    for tu in lib.translation_units.values():
                        count = 0
                        for section in tu.sections.values():
                            for symbol in section.symbols:
                                if isinstance(symbol, SInitFunction):
                                    sinit_functions.add(symbol.addr)
                                if symbol.identifier.name == "_prolog":
                                    entrypoints.add(symbol.addr)
                                elif symbol.identifier.name == "_epilog":
                                    entrypoints.add(symbol.addr)
                                elif symbol.identifier.name == "_unresolved":
                                    entrypoints.add(symbol.addr)

                                symbol.gather_references(
                                    self.context, valid_range)
                                for reference in self.symbol_table.all(symbol.references):
                                    reference.add_reference(symbol)
                                for reference in self.symbol_table.all(symbol.implicit_references):
                                    reference.add_implicit_reference(symbol)
                            count += len(section.symbols)
                        progress.update(task1, advance=count)

        for function in sinit_functions:
            self.symbol_table[-1, function].add_reference(None)

        for entrypoint in entrypoints:
            self.symbol_table[-1, entrypoint].add_reference(None)

        entrypoints.add(settings.ENTRY_POINT)
        for module in self.modules:
            found = set()

            def reachable(current, depth):
                pad = '  ' * depth
                if current in found:
                    return

                symbol = self.symbol_table[-1, current]
                if not symbol:
                    return
                if symbol._module != module.index:
                    return

                #print(f"{pad}{current:08X} {symbol.identifier.name} ({len(symbol.references)})")

                found.add(current)
                for reference in symbol.references:
                    reachable(reference, depth + 1)

            for entrypoint in entrypoints:
                reachable(entrypoint, 0)
            for function in sinit_functions:
                reachable(function, 0)

            for lib in module.libraries.values():
                for tu in lib.translation_units.values():
                    for section in tu.sections.values():
                        for symbol in section.symbols:
                            if symbol.addr in sinit_functions:
                                continue
                            if symbol.addr in found:
                                symbol.is_reachable = True

    def library_paths(self):
        print(f"{self.step_count:2} Determine library paths")
        self.step_count += 1

        for module in self.modules:
            if module.index == 0:
                base = module.libraries[None]
                base.lib_path = self.src_path
                base.inc_path = self.inc_path
                base.asm_path = self.asm_path

                for lib in module.libraries.values():
                    if lib.name != None:
                        lib.lib_path = self.lib_path
                        lib.inc_path = self.inc_path
                        lib.asm_path = self.asm_path
                        lib.mk_path = self.lib_path
            else:
                rel_name = self.RELS[module.index].path.name.replace(
                    ".rel", "")
                for k, v in settings.FOLDERS:
                    if rel_name.startswith(k):
                        rel_name = v + rel_name
                        break

                for lib in module.libraries.values():
                    if lib.name != None:
                        lib.lib_path = self.rel_path.joinpath(
                            f"{rel_name}/libs/")
                        lib.inc_path = self.inc_path.joinpath(
                            f"rel/{rel_name}/libs/")
                        lib.asm_path = self.asm_path.joinpath(
                            f"rel/{rel_name}/libs/")
                        lib.mk_path = self.rel_path.joinpath(
                            f"{rel_name}/libs/")

                base = module.libraries[None]
                base.name = rel_name
                base.lib_path = self.rel_path
                base.inc_path = self.inc_path.joinpath(f"rel/")
                base.asm_path = self.asm_path.joinpath("rel/")
                base.mk_path = self.rel_path

    def main(self):
        total_start_time = time.time()
        self.ref_gen = True
        self.no_file_generation = False
        self.cpp_group_count = 4
        self.asm_group_count = 128
        self.step_count = 1
        cache = False

        print(f"dol2asm {VERSION} for '{settings.GAME_NAME}'")

        self.context = MainContext(0, None)

        if self.debug_logging:
            enable_debug_logging()

        self.search_for_game_files()
        self.read_dol()
        self.read_rels()
        self.read_rels_extract()

        #
        if not self.select_modules:
            self.gen_modules = [0] + [x for x in self.RELS.keys()]
        else:
            self.gen_modules = [int(x) for x in self.select_modules]

        if not self.rel_gen:
            self.gen_modules = [x for x in self.gen_modules if x == 0]
        self.gen_modules.sort()

        if len(self.gen_modules) == 0:
            error(f"please, select at least one module for generation...")
            fatal_exit()

        self.search_binary(cache)

        start_time = time.time()

        cache_path = Path("build/full_cache_xx.dump")
        if cache and cache_path.exists():
            with cache_path.open('rb') as input:
                self.modules, self.symbol_table = pickle.load(input)
        else:
            self.generate_symbol_table()
            self.combine_symbols()
            self.search_for_reference_arrays()
            self.apply_relocations()

            if cache:
                util._create_dirs_for_file(cache_path)
                with cache_path.open('wb') as output:
                    pickle.dump((self.modules, self.symbol_table,), output)

        cache_path = Path("build/full_cache_rc.dump")
        if cache and cache_path.exists():
            with cache_path.open('rb') as input:
                self.modules, self.symbol_table = pickle.load(input)
        else:
            self.reference_count()

            if cache:
                util._create_dirs_for_file(cache_path)
                with cache_path.open('wb') as output:
                    pickle.dump((self.modules, self.symbol_table,), output)

        self.name_symbols()
        self.validate_symbols()
        self.library_paths()

        if not self.select_modules and self.rel_gen:
            global_destructor_chain_path = Path(__file__).parent.joinpath(
                "global_destructor_chain.template.cpp")
            executor_path = Path(__file__).parent.joinpath("executor.template.cpp")

            if global_destructor_chain_path.exists():
                output_path = self.rel_path.joinpath("global_destructor_chain.cpp")
                util._create_dirs_for_file(output_path)
                with global_destructor_chain_path.open('r') as input:
                    with output_path.open('w') as output:
                        output.write(input.read())
            else:
                LOG.warning(
                    f"global_destructor_chain template not found: '{global_destructor_chain_path}'")

            if executor_path.exists():
                output_path = self.rel_path.joinpath("executor.cpp")
                util._create_dirs_for_file(output_path)
                with executor_path.open('r') as input:
                    with output_path.open('w') as output:
                        output.write(input.read())
            else:
                LOG.warning(f"executor template not found: '{executor_path}'")

        cpp_tasks = []
        asm_tasks = []
        symdef_tasks = []
        for module in self.modules:
            if not module.index in self.gen_modules:
                continue

            function_files = set()
            for lib in module.libraries.values():
                for tu in lib.translation_units.values():
                    for sec in tu.sections.values():
                        for symbol in sec.symbols:
                            if not isinstance(symbol, ASMFunction):
                                continue

                            include_path = f"{tu.asm_function_path(lib)}/{symbol.identifier.label}.s"
                            if len(include_path) > 120 or (include_path.lower() in function_files):
                                include_path = f"{tu.asm_function_path(lib)}/func_{symbol.addr:08X}.s"

                            # when using wine the file paths for daAlink_c::checkUnderMove1BckNoArc:
                            #   "asm/d/a/d_a_alink/checkUnderMove1BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM.s"
                            # will somehow not get used. instead the compiler takes the path of another included function file.
                            # there seems to be a collision within the compiler as by changing this path we get past the problem.
                            if symbol.identifier.label == "checkUnderMove1BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM":
                                include_path = f"{tu.asm_function_path(lib)}/func_{symbol.addr:08X}.s"

                            symbol.include_path = Path(include_path)
                            function_files.add(include_path.lower())
            if self.cpp_gen:
                for lib_name, lib in module.libraries.items():
                    for tu_name, tu in lib.translation_units.items():
                        if len(self.select_tu) == 0 or tu_name in self.select_tu:
                            if not tu.is_empty and tu.generate:
                                cpp_tasks.append((
                                    tu,
                                    tu.source_path(lib),
                                    tu.include_path(lib),
                                    tu.include_path(lib).relative_to(self.inc_path),))

            if self.asm_gen:
                asm_path_tasks = []
                for lib in module.libraries.values():
                    for tu in lib.translation_units.values():
                        if len(self.select_tu) == 0 or tu_name in self.select_tu:
                            if not tu.is_empty and tu.generate:
                                for sec in tu.sections.values():
                                    functions = []
                                    for symbol in sec.symbols:
                                        if not isinstance(symbol, ASMFunction):
                                            continue
                                        if self.no_file_generation:
                                            if symbol.include_path.exists():
                                                continue

                                        if len(self.select_asm) == 0 or symbol.label in self.select_asm:
                                            asm_path_tasks.append(
                                                util.create_dirs_for_file(symbol.include_path))
                                            functions.append((symbol,))
                                    if functions:
                                        for fs in util.chunks(functions, self.asm_group_count):
                                            asm_tasks.append((sec, fs))
                asyncio.run(util.wait_all(asm_path_tasks))

        if self.sym_gen:
            for module in self.modules:
                if not module.index in self.gen_modules:
                    continue

                symdef_tasks.append((module,))

        for module in self.modules:
            for lib in module.libraries.values():
                for tu in lib.translation_units.values():
                    for section in tu.sections.values():
                        for symbol in section.symbols:
                            symbol.source = None

        end_time = time.time()
        print(f"{self.step_count:2} Setup complete! {end_time-start_time:.2f} seconds")
        self.step_count += 1

        if self.mk_gen:
            print(f"{self.step_count:2} Generate Makefiles")
            self.step_count += 1
            start_time = time.time()
            makefile_tasks = []
            for module in self.modules:
                if module.index in self.gen_modules:
                    if module.index == 0:
                        for name, lib in module.libraries.items():
                            if name != None:
                                makefile_tasks.append(
                                    makefile.create_library(lib))
                    else:
                        makefile_tasks.append(
                            makefile.create_rel(module, self.rel_path))

            makefile_tasks.append(makefile.create_obj_files(self.modules))
            makefile_tasks.append(makefile.create_include_link(self.modules))

            asyncio.run(util.wait_all(makefile_tasks))
            end_time = time.time()
            info(
                f"generated {len(makefile_tasks)} makefiles in {end_time-start_time:.2f} seconds ({len(makefile_tasks)/(end_time-start_time)} mk/sec)")

        if len(cpp_tasks) > 0:
            print(f"{self.step_count:2} Generate C++ files")
            self.step_count += 1

            start_time = time.time()
            tasks = [(x,)
                     for x in util.chunks(cpp_tasks, self.cpp_group_count)]
            mp.progress(self.process_count, cpp.export_translation_unit_group, tasks, shared={
                'symbol_table': self.symbol_table,
            })
            end_time = time.time()
            info(f"generated {len(cpp_tasks)} C++ files in {end_time-start_time:.2f} seconds ({(self.cpp_group_count*len(cpp_tasks))/(end_time-start_time)} c++/sec)")

        if len(asm_tasks) > 0:
            print(f"{self.step_count:2} Generate ASM files")
            self.step_count += 1

            start_time = time.time()
            tasks = asm_tasks
            debug(len(tasks))
            mp.progress(self.process_count, cpp.export_function, tasks, shared={
                'symbol_table': self.symbol_table,
                'no_file_generation': self.no_file_generation,
            })
            end_time = time.time()
            asm_file_count = 0
            for sec, funcs in asm_tasks:
                asm_file_count += len(funcs)
            info(f"generated {asm_file_count} asm files in {end_time-start_time:.2f} seconds ({(self.asm_group_count*len(asm_tasks))/(end_time-start_time)} asm/sec)")

        if len(symdef_tasks) > 0:
            print(f"{self.step_count:2} Generate module symbol definition files")
            self.step_count += 1

            start_time = time.time()
            mp.progress(self.process_count, definition.export_file, symdef_tasks, shared={
                'symbol_table': self.symbol_table,
            })
            end_time = time.time()
            info(f"generated {len(symdef_tasks)} module symbol definition files in {end_time-start_time:.2f} seconds ({len(symdef_tasks)/(end_time-start_time)} msd/sec)")

        total_end_time = time.time()
        print(
            f"{self.step_count:2} Complete! {total_end_time-total_start_time:.2f} seconds")
        self.step_count += 12

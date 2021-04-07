
from intervaltree import Interval, IntervalTree

from .data import *
from . import util

def calculate_function_alignments(context, libraries):
    # gather all functions
    function_list = []
    for lib in libraries:
        for tu in lib.translation_units.values():
            for sec in tu.sections.values():
                function_list.extend([symbol for symbol in sec.symbols if isinstance(symbol, Function)])

    # sort functions
    function_list.sort(key=lambda x: x.addr)

    # find function alignment
    for curr, next in util.mapOverlap(function_list, 2):
        if not curr or not next:
            continue

        assert isinstance(curr, Function)
        assert isinstance(next, Function)

        curr_end = curr.addr + curr.size
        next_start = next.addr
        if curr_end == next_start:
            continue

        for x in [32,16,8]:
            if (curr_end + x - 1) & ~(x - 1) == next_start:
                next.alignment = x
                context.debug(f"[function] {next.addr:08X} {next.identifier.name} aligned with {next.alignment} bytes")
                curr.padding = 0
                break

def caluclate_symbol_data_alignment(context, section):
    for curr, next in util.mapOverlap(section.symbols, 2):
        if not curr or not next:
            continue

        if isinstance(curr, Function):
            continue

        curr_end = curr.relative_addr + curr.size
        next_start = next.relative_addr
        if curr_end == next_start:
            continue

        for x in [64,32,16]:
            if x > section.alignment:
                continue
            if (curr_end + x - 1) & ~(x - 1) == next_start:
                next.alignment = x
                context.debug(f"[symbol] {next.identifier.name}: {next.addr:08X} ({next.relative_addr:06X}) aligned with {x} bytes")
                break



def merge_symbol_from_group(context, section, group):
    if len(group) == 1:
        return None

    if isinstance(group[0], ArbitraryData):
        struct = Structure.create(section, group)
        struct.set_mlts(group[0]._module,group[0]._library,group[0]._translation_unit,group[0]._section)
        return [struct]

    context.error(group[0])
    context.error(group[0].section.id)
    context.error(group)
    assert False

def merge_section_symbols(context, section, add_list, remove_list):
    group = []
    symbols = []

    def merge_group():
        assert group
        new_symbols = merge_symbol_from_group(context, section, group)
        if new_symbols != None:
            add_list.update(set(new_symbols))
            remove_list.update(set(group) - add_list)
            symbols.extend(new_symbols)
        else:
            symbols.extend(group)

    for old_symbol in section.symbols:
        is_unaligned = isinstance(old_symbol, ArbitraryData) and old_symbol.addr % 4 != 0

        if is_unaligned:
            assert group
            group.append(old_symbol)
        else:
            if group:
                merge_group()
            else:
                symbols.extend(group)
            group = [old_symbol]

    if group:
        merge_group()

    section.symbols = symbols   

def merge_symbols(context, libraries):
    remove_list = set()
    add_list = set()
    for lib in libraries:
        for tu in lib.translation_units.values():
            for section in tu.sections.values():
                merge_section_symbols(context, section, add_list, remove_list)

    return add_list, remove_list
        
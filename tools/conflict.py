"""

conflict.py - Finds conflicts between in main.dol that prevents it from matching.

"""

import sys
import logging

from pathlib import Path
from collections import defaultdict

try:
    import click

    from rich.logging import RichHandler
    from rich.console import Console
except ImportError as e:
    MISSING_PREREQUISITES = (
        f"Missing prerequisite python module {e}.\n"
        f"Run `python3 -m pip install --user -r tools/requirements.txt` to install prerequisites."
    )

    print(MISSING_PREREQUISITES, file=sys.stderr)
    sys.exit(1)


class PathPath(click.Path):
    def convert(self, value, param, ctx):
        return Path(super().convert(value, param, ctx))


VERSION = "1.0"
CONSOLE = Console()

logging.basicConfig(
    level="NOTSET",
    format="%(message)s",
    datefmt="[%X]",
    handlers=[RichHandler(console=CONSOLE, rich_tracebacks=True)],
)

LOG = logging.getLogger("rich")
LOG.setLevel(logging.INFO)


@click.group()
@click.version_option(VERSION)
def conflict():
    """Finds conflicts between in main.dol that prevents it from matching."""
    pass


class ConflictException(Exception):
    pass


def try_hex(value, padding):
    if value == None:
        return value

    if not isinstance(value, int):
        return value

    return "0x{0:0{1}X}".format(value, padding)


def normalize_name(name):
    if name == None:
        return None

    # literals will have different indices, thus we cannot rely on their name
    if name.startswith("@") or name.startswith("lit_"):
        return None

    return name


def is_literal(name):
    return name.startswith("@") or name.startswith("lit_")


def name_match(A, B, addr):
    if A == B:
        return True
    elif is_literal(A) and is_literal(B):
        return True
    elif A == B.replace("_o_iconv_cpp", "_cpp"):  # TODO: remove, not needed any more
        return True
    elif A == f"func_{addr:08X}":
        return True
    elif A == f"data_{addr:08X}":
        return True
    elif B == f"func_{addr:08X}":
        return True
    elif B == f"data_{addr:08X}":
        return True

    return False


#
# All
#
@conflict.command(name="all")
@click.option(
    "--build_path",
    "build_path",
    required=False,
    type=PathPath(file_okay=False, dir_okay=True),
    default="build/dolzel2/",
)
@click.option(
    "--expected_path",
    "expected_path",
    required=False,
    type=PathPath(file_okay=False, dir_okay=True),
    default="expected/build/dolzel2/",
)
def conflict_all(build_path, expected_path):
    """Run all conflict checks."""

    try:
        sections(build_path, expected_path)
    except ConflictException as exception:
        LOG.error(exception)

    try:
        symbols(build_path, expected_path)
    except ConflictException as exception:
        LOG.error(exception)

    CONSOLE.print("no conflicts were found 😊")


#
# Sections
#
@conflict.command(name="sections")
@click.option(
    "--build_path",
    "build_path",
    required=False,
    type=PathPath(file_okay=False, dir_okay=True),
    default="build/dolzel2/",
)
@click.option(
    "--expected_path",
    "expected_path",
    required=False,
    type=PathPath(file_okay=False, dir_okay=True),
    default="expected/build/dolzel2/",
)
def conflict_sections(build_path, expected_path):
    """Check if there are problems with the sections in the build compared with the expected build."""

    try:
        sections(build_path, expected_path)
    except ConflictException as exception:
        LOG.error(exception)


def sections(build_path, expected_path):
    import libelf
    import libdol

    belf_file = build_path.joinpath("main.elf")
    eelf_file = expected_path.joinpath("main.elf")

    # load elf
    build = libelf.load_object_from_path(
        belf_file, skip_symbols=True, skip_relocations=True
    )
    expected = libelf.load_object_from_path(
        eelf_file, skip_symbols=True, skip_relocations=True
    )

    SECTION_NAMES = [y for x, y in libdol.NAMES_FOR_INDEX.items()]
    bsection_names = [k for k in build.sections if k in SECTION_NAMES]
    esection_names = [k for k in expected.sections if k in SECTION_NAMES]

    if len(bsection_names) != len(esection_names):
        raise ConflictException(
            f"number of elf sections does not match (expected: {len(esection_names)}, got: {len(bsection_names)})"
        )

    for bsection_name, esection_name in zip(bsection_names, esection_names):
        if bsection_name != esection_name:
            raise ConflictException(
                f"section names does not match (expected: '{esection_name}', got: '{bsection_name}')"
            )

        bsection = build.sections[bsection_name]
        esection = expected.sections[esection_name]
        if type(bsection) != type(esection):
            raise ConflictException(
                f"'{bsection_name}' section kinds does not match (expected: '{type(esection)}', got: '{type(bsection)}')"
            )

        if bsection.addr != esection.addr:
            raise ConflictException(
                f"'{bsection_name}' section addresses does not match (expected: {try_hex(esection.addr,8)}, got: {try_hex(bsection.addr,8)})"
            )

        if bsection.size != esection.size:
            info = []
            info.append(
                f"'{bsection_name}' section sizes does not match (expected: {try_hex(esection.size,6)}, got: {try_hex(bsection.size,6)})"
            )

            if bsection.header.sh_addr != 0:
                info.append(f"build section:")
                info.append(f"    begin: 0x{bsection.header.sh_addr:08X}")
                info.append(
                    f"    end:   0x{bsection.header.sh_addr + bsection.size:08X}"
                )

            if esection.header.sh_addr != 0:
                info.append(f"expected section:")
                info.append(f"    begin: 0x{esection.header.sh_addr:08X}")
                info.append(
                    f"    end:   0x{esection.header.sh_addr + esection.size:08X}"
                )

            raise ConflictException("\n".join(info))

    for bsection_name, esection_name in zip(bsection_names, esection_names):
        bsection = build.sections[bsection_name]
        esection = expected.sections[esection_name]

        if bsection.data != esection.data:
            position = -1
            for index, tup in enumerate(zip(esection.data, bsection.data)):
                if tup[0] != tup[1]:
                    position = index
                    break

            info = []
            if position >= 0:
                info.append(f"'{bsection_name}' sections data does not match")
                info.append(
                    f"first difference is at position {position} (0x{position:04X}) (expected: 0x{tup[0]:02X}, got: 0x{tup[1]:02X})"
                )

                if bsection.header.sh_addr != 0:
                    build_location = bsection.header.sh_addr + position
                    info.append(f"build location:")
                    info.append(f"    addr: 0x{build_location:08X}")

                if esection.header.sh_addr != 0:
                    expected_location = esection.header.sh_addr + position
                    info.append(f"expected location:")
                    info.append(f"    addr: 0x{expected_location:08X}")
            else:
                info.append(f"could not determine the byte difference")

            raise ConflictException("\n".join(info))

        # TODO: more checks?


#
# symbols
#
@conflict.command(name="symbols")
@click.option(
    "--build_path",
    "build_path",
    required=False,
    type=PathPath(file_okay=False, dir_okay=True),
    default="build/dolzel2/",
)
@click.option(
    "--expected_path",
    "expected_path",
    required=False,
    type=PathPath(file_okay=False, dir_okay=True),
    default="expected/build/dolzel2/",
)
def conflict_symbols(build_path, expected_path):
    """Check if there are problems with the symbols in the build compared with the expected build."""

    try:
        symbols(build_path, expected_path)
    except ConflictException as exception:
        LOG.error(exception)


def symbols(build_path, expected_path):
    import libelf
    import libdol

    belf_file = build_path.joinpath("main.elf")
    eelf_file = expected_path.joinpath("main.elf")

    # load elf
    build = libelf.load_object_from_path(
        belf_file, skip_symbols=False, skip_relocations=True
    )
    expected = libelf.load_object_from_path(
        eelf_file, skip_symbols=False, skip_relocations=True
    )

    # assign section address
    for _, section in build.sections.items():
        if section.header.sh_addr == 0:
            continue
        section.addr = section.header.sh_addr

    for _, section in expected.sections.items():
        if section.header.sh_addr == 0:
            continue
        section.addr = section.header.sh_addr

    # build dictionary of symbol
    def strip_filter(symbol):
        if isinstance(symbol, libelf.AbsoluteSymbol):
            # we're not checking for conflict between absolute symbols,
            # they are generated by the lcf.py script and are only temporary.
            return False

        if symbol.name == None:
            # we only care about symbols with names
            return False

        return True

    build_stripped_symbols = [x for x in build.symbols if strip_filter(x)]
    expected_stripped_symbols = [x for x in expected.symbols if strip_filter(x)]

    build_name2symbols = defaultdict(list)
    for symbol in build_stripped_symbols:
        build_name2symbols[symbol.name].append(symbol)

    expected_name2symbols = defaultdict(list)
    for symbol in expected_stripped_symbols:
        expected_name2symbols[symbol.name].append(symbol)

    build_addr2sym = {k.offset: k for k in build_stripped_symbols}
    expected_addr2sym = {k.offset: k for k in expected_stripped_symbols}

    build_symbol_address_list = list(build_addr2sym.keys())
    build_symbol_address_list.sort()

    check_address_set = set()
    for i, symbol_addr in enumerate(build_symbol_address_list):
        symbol = build_addr2sym[symbol_addr]

        if not symbol.offset in expected_addr2sym:
            info = []
            info.append(f"symbol not found")
            info.append(f"    section: {symbol.getSection().name}")
            info.append(f"    addr:    0x{symbol.offset:08X}")
            info.append(f"    size:    0x{symbol.size:05X}")
            info.append(f"    name:    {symbol.name}")
            raise ConflictException("\n".join(info))

        expected_symbol = expected_addr2sym[symbol.offset]
        if symbol.size != expected_symbol.size:
            # because of dol2asm all data elements, before they are decompiled, will include
            # padding. when decompiling the padding may get removed, and thus this tool will
            # report a false-positive size difference. to fix this, find the offset to the next
            # symbol (in the same section) and make sure it is located at the expected location.
            next_symbol = None
            current_section = symbol.getSection()
            i += 1  # skip current symbol
            if i < len(build_symbol_address_list):
                i_addr = build_symbol_address_list[i]
                i_symbol = build_addr2sym[i_addr]
                if i_symbol.getSection() == current_section:
                    next_symbol = i_symbol

            false_positive = False
            if next_symbol:
                difference = next_symbol.offset - symbol.offset
                if difference == expected_symbol.size:
                    false_positive = True

            if not false_positive:
                info = []
                info.append(
                    f"size difference (expected: 0x{expected_symbol.size:05X}, got: 0x{symbol.size:05X})"
                )
                info.append(f"symbol:")
                info.append(f"    section: {symbol.getSection().name}")
                info.append(f"    addr:    0x{symbol.offset:08X}")
                info.append(f"    size:    0x{symbol.size:05X}")
                info.append(f"    name:    {symbol.name}")
                info.append(f"expected symbol:")
                info.append(f"    section: {expected_symbol.getSection().name}")
                info.append(f"    addr:    0x{expected_symbol.offset:08X}")
                info.append(f"    size:    0x{expected_symbol.size:05X}")
                info.append(f"    name:    {expected_symbol.name}")
                raise ConflictException("\n".join(info))

        if not name_match(symbol.name, expected_symbol.name, symbol.offset):
            info = []
            info.append(
                f"name difference (expected: '{expected_symbol.name}', got: '{symbol.name}')"
            )
            info.append(f"symbol:")
            info.append(f"    section: {symbol.getSection().name}")
            info.append(f"    addr:    0x{symbol.offset:08X}")
            info.append(f"    size:    0x{symbol.size:05X}")
            info.append(f"    name:    {symbol.name}")
            info.append(f"expected symbol:")
            info.append(f"    section: {expected_symbol.getSection().name}")
            info.append(f"    addr:    0x{expected_symbol.offset:08X}")
            info.append(f"    size:    0x{expected_symbol.size:05X}")
            info.append(f"    name:    {expected_symbol.name}")
            raise ConflictException("\n".join(info))

        check_address_set.add(symbol.offset)

    expected_symbol_address_list = list(expected_addr2sym.keys())
    expected_symbol_address_list.sort()

    for symbol_addr in expected_symbol_address_list:
        if symbol_addr in check_address_set:
            continue

        expected_symbol = build_addr2sym[symbol_addr]
        info = []
        info.append(f"missing symbol")
        info.append(f"expected symbol:")
        info.append(f"    section: {expected_symbol.getSection().name}")
        info.append(f"    addr:    0x{expected_symbol.offset:08X}")
        info.append(f"    size:    0x{expected_symbol.size:05X}")
        info.append(f"    name:    {expected_symbol.name}")
        raise ConflictException("\n".join(info))


#
#
#

if __name__ == "__main__":
    conflict()

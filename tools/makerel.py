"""

makerel.py - Generate .rel files from .plf files and a static binary

"""

import click
import sys
import rich
import logging
import glob
import os
import libelf
import librel
import yaz0
import traceback

from pathlib import Path
from collections import defaultdict
from dataclasses import dataclass, field
from typing import List, Set, Tuple, Dict
from rich.logging import RichHandler
from rich.console import Console

VERSION = "1.0"
CONSOLE = Console()

logging.basicConfig(
    level="NOTSET",
    format="%(message)s",
    datefmt="[%X]",
    handlers=[RichHandler(console=CONSOLE, rich_tracebacks=True)]
)

LOG = logging.getLogger("rich")
LOG.setLevel(logging.INFO)

SECTION_MASK = {
    ".init",
    ".text",
    ".ctors",
    ".dtors",
    ".rodata",
    ".data",
    ".bss"
}

REL_SECTION_MASK = {
    ".rela.init",
    ".rela.text",
    ".rela.ctors",
    ".rela.dtors",
    ".rela.rodata",
    ".rela.data",
    ".rela.bss",
}

@click.group()
@click.version_option(VERSION)
def makerel():
    pass

@makerel.command(name="unresolved")
@click.option('--debug/--no-debug')
@click.option("--output", "-o", default="forceactive.txt", required=True)
@click.argument("str_paths", metavar='<ELFs>', nargs=-1)
def unresolved(debug, output, str_paths):
    """ Generate a list of symbols which must be in the static executable (and other RELs). """

    if debug:
        LOG.setLevel(logging.DEBUG)

    static, plfs = load_elfs(str_paths)

    if static:
        LOG.error(
            f"unresolved does not handle executable files '{static.path}'")
        sys.exit(1)

    undef_symbols = set()
    for plf in plfs:
        for relocation in plf.relocations:
            symbol = relocation.symbol
            if isinstance(symbol, libelf.UndefSymbol):
                assert symbol.name
                undef_symbols.add(symbol.name)

    LOG.debug(f"found {len(undef_symbols)} symbols")

    names = list(undef_symbols)
    names.sort()
    with open(output, "w") as file:
        for name in names:
            file.write(f"{name}\n")

    CONSOLE.LOG(f"Unresolved Symbols: '{output}'")


@makerel.command(name="build")
@click.option('--debug/--no-debug')
@click.option('--yaz0', '-y', 'compress_yaz0')
@click.option("--id-offset", '-i', 'rel_id_offset', default=1)
@click.option("--spoof-path", '-q', 'spoof_path', default="D:\\zeldaGC_USA\\dolzel2\\bin\\Final\\")
@click.option("--string-table", '-s', 'string_path', required=True)
@click.option("--symbols", default="ELF", type=click.Choice(["ELF", "DEFS"], case_sensitive=False))
@click.argument("str_paths", metavar='<ELFs>', nargs=-1)
def build(debug, symbols, str_paths, rel_id_offset, compress_yaz0, spoof_path, string_path):
    """ Build RELs files from a list of plfs files. """

    if debug:
        LOG.setLevel(logging.DEBUG)

    static, plfs = load_elfs(str_paths)
    if not static:
        LOG.error(f"static executable ('main.elf') expected")
        sys.exit(1)

    # 
    id = rel_id_offset
    elfs = []
    for plf in plfs:
        if static == plf:
            rel = IndexedElf(0, plf)
        else:
            rel = IndexedElf(id, plf)
            id += 1 
        elfs.append(rel)

    # sort relocations
    for elf in elfs:
        if "_unresolved" in elf.plf.symbol_map:
            elf._unresolved = elf.plf.symbol_map["_unresolved"][0]

        for _, relocations in elf.plf.section_relocations:
                relocations.sort(key=lambda r: r.offset)

    # symbol table
    symbol_table = dict()
    for elf in elfs:
        for symbol in elf.plf.symbols:
            if isinstance(symbol, libelf.UndefSymbol):
                continue
            if not symbol.isBindGlobal():
                continue
            symbol_table[symbol.name] = (elf, symbol)

    for elf in elfs:
        if elf.id != 0:
            elf.resolve_relocations(symbol_table)

    string_list = StringList(string_path, spoof_path)
    for elf in elfs:
        if elf.id != 0:
            write_rel_from_elf(elf, string_list, compress_yaz0)

    string_list.write()

def apply_rel24_relocation(relocation, section, symbol):
    if not symbol or not isinstance(symbol, libelf.OffsetSymbol):
        return False

    try:
        if librel.apply_relocation(relocation.type, 0, section.data, 0, relocation.offset, symbol.offset, relocation.addend):
            return True
    except librel.RELRelocationException as e:
        LOG.error(f"applying relocation failed!")
        LOG.error(f"relocation: {librel.RELOCATION_NAMES[relocation.type]} {relocation.offset:04X}")
        LOG.error(f"section: {section.header.sh_addr:08X} {section.header.sh_size:04X} {section.name}")
        LOG.error(f"symbol: {symbol.offset:08X} {symbol.name}+0x{relocation.addend:X}")
        LOG.error(e)
        CONSOLE.print_exception()
        traceback.print_tb()
        traceback.print_exc()
        sys.exit(1)

    return False

@dataclass
class StringList:
    output_path: str
    spoof_path: str
    data: str = ""

    def add(self, path):
        offset = len(self.data)
        name = str(path)
        if self.spoof_path:
            name = f"{self.spoof_path}{path.name} "
        self.data += name
        return offset, len(name)

    def write(self):   
        if len(self.data) > 0:
            with open(self.output_path, 'w') as file:
                file.write(self.data)


@dataclass
class ImpTable:
    id: int
    last_section: int
    section_offset: int = 0
    relocations: List[Tuple[int,int,int,int]] = field(default_factory=list)
    rel_offset: int = 0

    def section(self, section_id):
        self.last_section = section_id
        self.section_offset = 0
        self.relocations.append((0, librel.R_DOLPHIN_SECTION, section_id, 0))

    def end(self):
        self.relocations.append((0, librel.R_DOLPHIN_END, 0, 0))

    def nop(self, offset):
        self.relocations.append((offset, librel.R_DOLPHIN_NOP, 0, 0))

    def relocation(self, offset, type, section, addend):
        self.relocations.append((offset, type, section, addend))


@dataclass
class IndexedElf:
    id: int
    plf: libelf.Object

    _unresolved: libelf.Symbol = None
    imp_tables: Dict[int,ImpTable] = field(default_factory=dict)
    imp_table_order: List[int] = field(default_factory=list)
    complete_relocations: Set[libelf.Relocation] = field(default_factory=set)

    def symbol_by_name(self, name):
        if name in self.plf.symbol_map:
            symbols = self.plf.symbol_map[name]
            if len(symbols) > 1:
                LOG.warning(symbols)
            return symbols[0]
        return None

    def resolve_relocation(self, section, relocation, symbol_table):
        # relocations of function calls should all point to _unresolved if it is defined.
        if self._unresolved:
            if relocation.type == librel.R_PPC_REL24:
                apply_rel24_relocation(relocation, relocation.section, self._unresolved)

        ext_symbol = None
        my_symbol = relocation.symbol

        if my_symbol.name and my_symbol.name.endswith("stringBase0"):
            replace_symbol = self.symbol_by_name("@stringBase0")
            if replace_symbol:
                my_symbol = replace_symbol


        #LOG.info(f"relocation for: {my_symbol.name} ({type(my_symbol).__name__})")
        other = None
        if isinstance(my_symbol, libelf.UndefSymbol):
            if my_symbol.name in symbol_table:
                other, ext_symbol = symbol_table[my_symbol.name]
        else:
            other = self
            ext_symbol = my_symbol
            if relocation.type == librel.R_PPC_REL24:
                if apply_rel24_relocation(relocation, relocation.section, ext_symbol):
                    self.complete_relocations.add(relocation)
                    return True

        if ext_symbol:
            # different module id, create new imp table
            if not other.id in self.imp_tables:
                self.imp_table_order.append(other.id)
                self.imp_tables[other.id] = ImpTable(other.id, -1)

            table = self.imp_tables[other.id]

            # new section
            if table.last_section != section.header.sh_info:
                assert section.header.sh_info <= 255
                table.section(section.header.sh_info)

            relative_offset = relocation.offset - table.section_offset
            table.section_offset = relocation.offset

            # too big offset, insert nop's until the offset is manageable
            while relative_offset >= 0xFFFF:
                table.nop(0xFFFF)
                relative_offset -= 0xFFFF

            if not ext_symbol.section:
                assert other.id == 0
                assert isinstance(ext_symbol, libelf.AbsoluteSymbol)

                found_section = None
                for section in other.plf.sections.values():
                    if ext_symbol.address >= section.header.sh_addr and ext_symbol.address < section.header.sh_addr + section.header.sh_size:
                        found_section = section
                        break

                if found_section:
                    ext_symbol.section = found_section
                else:
                    LOG.error(f"error no-section provided for relocation of: {my_symbol.name} ({type(my_symbol).__name__}) ({self.plf.name} <- {other.plf.name})")
                    LOG.error(vars(relocation))
                    LOG.error(ext_symbol)
                    k = vars(ext_symbol)
                    k.pop("object", None)
                    k.pop("section", None)
                    LOG.error(k)
                    sys.exit(1)
            assert ext_symbol.section.header.sh_info <= 255

            addend = relocation.addend
            if isinstance(ext_symbol, libelf.OffsetSymbol):
                addend += ext_symbol.offset
            elif isinstance(ext_symbol, libelf.AbsoluteSymbol):
                addend += ext_symbol.address

            section_id = ext_symbol.section.header.sh_info
            if section_id == 0:
                section_id = ext_symbol.section.header.id
 
            table.relocation(relative_offset, relocation.type, section_id, addend)    
            self.complete_relocations.add(relocation)
            return True
        return False

    def resolve_relocations(self, symbol_table):
        for name, relocations in self.plf.section_relocations:
            if not name in REL_SECTION_MASK:
                continue
            section = self.plf.sections[name]
            for relocation in relocations:
                if not self.resolve_relocation(section, relocation, symbol_table):
                    LOG.error(f"relocation failed: {name:<14} {relocation.symbol.name}")
                    sys.exit(1)

def align_next(offset, alignment):
    return  (offset - 1 + alignment) & ~(alignment - 1)

def write_rel(path: Path, 
        id: int, 
        align: int, 
        bss_align: int, 
        bss_size: int, 
        name_offset: int, 
        name_size: int, 
        prolog: libelf.Symbol,
        epilog: libelf.Symbol,
        unresolved: libelf.Symbol,
        sections: List[librel.Section], 
        imp_tables: List[ImpTable]):

    output = librel.REL()
    output.index = id
    output.numSections = len(sections)
    output.sectionInfoOffset = 0x4C # for version 3
    output.nameOffset = name_offset
    output.nameSize = name_size
    output.version = 3
    output.bssSize = bss_size
    output.relOffset = 0
    output.impOffset = 0
    output.impSize = 0

    if prolog:
        assert isinstance(prolog, libelf.OffsetSymbol)
        output.prolog = prolog.offset
        output.prologSection = prolog.section.header.id

    if epilog:
        assert isinstance(epilog, libelf.OffsetSymbol)
        output.epilog = epilog.offset
        output.epilogSection = epilog.section.header.id

    if unresolved:
        assert isinstance(unresolved, libelf.OffsetSymbol)
        output.unresolved = unresolved.offset
        output.unresolvedSection = unresolved.section.header.id

    assert output.version >= 2
    output.align = align
    output.bssAlign = bss_align

    assert output.version >= 3

    with path.open('wb') as file:
        librel.write_header(file, output)

        sections_offset = file.tell()
        assert sections_offset == output.sectionInfoOffset

        for section in sections:
            librel.write_section_header(file, section)

        section_data_offset = file.tell()
        for section in sections:
            if section.data:
                padding = section.offset - file.tell()
                if padding > 0:
                    file.write(b'\x00' * padding)

                assert section.offset == file.tell()
                librel.write_section_data(file, section)

        output.impOffset = file.tell()
        output.impSize = len(imp_tables) * 0x8

        file.write(b'\xFF' * output.impSize)

        output.fixSize =  file.tell() 
        output.relOffset = file.tell()
        rel_offset = output.relOffset
        for table in imp_tables:
            table.rel_offset = rel_offset
            if table.id == id:
                output.fixSize = rel_offset
            for relocation in table.relocations:
                librel.write_relocation(file, *relocation)
            rel_offset += len(table.relocations) * 8

        file.seek(output.impOffset, os.SEEK_SET)
        for table in imp_tables:
            librel.write_imp(file, table.id, table.rel_offset)

        file.seek(0, os.SEEK_SET)
        librel.write_header(file, output)



def write_rel_from_elf(elf: IndexedElf, string_list: StringList, compress_yaz0: bool):
    assert elf.id != 0

    path = Path(str(elf.plf.path).replace(".plf", ".rel"))
    yaz0_path = Path(str(elf.plf.path).replace(".plf", ".rel.yaz0"))
    LOG.debug(f"output: '{path}'")

    # add the plf path to the string list
    name_offset, name_size = string_list.add(elf.plf.path)

    # insert end relocation value for each imp-table
    for table in elf.imp_tables.values():
        if len(table.relocations) > 0:
            table.end()

    # count sections
    section_count = 1 # null section
    for elf_section in elf.plf.sections.values():
        if elf_section.name == ".dead" or elf_section.name == ".rela.dead":
            continue
        section_count += 1

    bss_size = 0
    bss_align = 1
    align = 1
    offset = 0x4C + 0x8 * section_count

    # build section list based on elf sections
    sections = list()
    sections.append(librel.Section(0, 0, False, False, 0))
    for elf_section in elf.plf.sections.values():
        if not elf_section.name in SECTION_MASK:
            continue

        section = librel.Section(elf_section.header.id, 0, False, False, elf_section.header.sh_size)
        if elf_section.header.sh_type == libelf.SHT_NOBITS:
            if elf_section.header.sh_addralign >= 1:
                if elf_section.header.sh_addralign >= bss_align:
                    bss_align = elf_section.header.sh_addralign

            bss_size += section.length
        else:
            if elf_section.header.sh_addralign >= 1:
                offset = align_next(offset, elf_section.header.sh_addralign)
                assert offset % elf_section.header.sh_addralign == 0

                if elf_section.header.sh_addralign >= align:
                    align = elf_section.header.sh_addralign
            
            section.offset = offset
            section.data = elf_section.data
            if (elf_section.header.sh_flags & libelf.SHF_EXECINSTR) != 0:
              section.executable_flag = True
            
            offset += section.length

        sections.append(section)

    while len(sections) < section_count:
        sections.append(librel.Section(len(sections), 0, False, False, 0))

    # find prolog, epilog, and unresolved symbols
    prolog = elf.symbol_by_name("_prolog")
    epilog = elf.symbol_by_name("_epilog")
    unresolved = elf.symbol_by_name("_unresolved")

    # the order of the imp-tables are:
    #       sorted rels (by module id) except the current one and module 0
    #       imp-table for the current rel
    #       imp-table for module 0
    tables = []
    for table in elf.imp_tables.values():
        if table.id == 0 or table.id == elf.id:
            continue
        tables.append(table)
    tables.sort(key=lambda x: x.id)

    if elf.id in elf.imp_tables:
        tables.append(elf.imp_tables[elf.id])

    if 0 in elf.imp_tables:
        tables.append(elf.imp_tables[0])

    # write the rel files
    write_rel(path, elf.id, align, bss_align, bss_size, name_offset, name_size, prolog, epilog, unresolved, sections, tables)

def load_elfs(str_paths):
    static = None
    plfs = []
    for plfs_path in str_paths:
        files = glob.glob(plfs_path, recursive=True)
        if len(files) <= 0:
            LOG.error(f"found zero files for path: '{plfs_path}'")

        for plf_path in files:
            path = Path(plf_path)
            LOG.debug(f"load: '{path}'")
            try:
                plf = libelf.load_object_from_path(path)
                if plf.executable:
                    if static:
                        LOG.error(f"multiple executable files not supported")
                        sys.exit(1)
                    static = plf
                plfs.append(plf)
            except libelf.ElfException as e:
                LOG.error(f"error: '{path}'")
                LOG.error(e)


    return static, plfs


if __name__ == "__main__":
    makerel()

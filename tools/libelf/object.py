
import struct
import os
import io
import sys

from dataclasses import dataclass, field
from typing import IO, Dict, Optional, List, Set
from functools import reduce

from . import elf
from .section import *
from .relocation import *
from .symbol import *

@dataclass
class Object:
    sections: Dict[str, Section] = field(default_factory=dict)
    sym_sections: Dict[int, SymbolTableSection] = field(default_factory=dict)
    str_sections: Dict[int, StringTableSection] = field(default_factory=dict)
    rel_sections: Dict[int, Section] = field(default_factory=dict)
    rela_sections: Dict[int, RelocationASection] = field(default_factory=dict)
    symbols: List[Symbol] = field(default_factory=list)
    symbol_map: Dict[str, Symbol] = field(default_factory=dict)
    relocations: List[Relocation] = field(default_factory=list)
    name: str = None
    path: Path = None

def load_object_from_file(path, name, file) -> Object:
    obj = Object()
    obj.path = path
    obj.name = name

    header = elf.Header()
    header.read(file)

    if header.e_ident[elf.EI_MAG] != 2135247942:
        fail("invalid elf file: 0x%08X == 0x7F454C46 '%s'" % (header.e_ident[elf.EI_MAG], name))
    if header.e_ident[elf.EI_CLASS] != 1:
        fail("only support elf 32-bit")
    if header.e_ident[elf.EI_DATA] != 2:
        fail("only support big-endianess")
    if header.e_ident[elf.EI_VERSION] != 1:
        fail("invalid elf version")
    if header.e_type != 1 and header.e_type != 2:
        fail("invalid object file type")
    if header.e_machine != 20:
        fail("invalid target")
    if header.e_version != 1:
        fail("invalid elf version")

    if header.e_phnum > 0 and header.e_phentsize != 0x20:
        fail("invalid program header size")
    if header.e_shnum > 0 and header.e_shentsize != 0x28:
        fail("invalid section header size")

    program_headers = []
    section_headers = []

    # Read program headers
    file.seek(header.e_phoff, os.SEEK_SET)
    for _ in range(header.e_phnum):
        program_header = elf.ProgramHeader()
        program_header.read(file)

    # Read sections headers
    file.seek(header.e_shoff, os.SEEK_SET)
    for i in range(header.e_shnum):
        section_header = elf.SectionHeader()
        section_header.read(file)

        if not (section_header.sh_type == elf.SHT_NULL
                or section_header.sh_type == elf.SHT_PROGBITS
                or section_header.sh_type == elf.SHT_SYMTAB
                or section_header.sh_type == elf.SHT_STRTAB
                or section_header.sh_type == elf.SHT_RELA
                or section_header.sh_type == elf.SHT_NOBITS
                or section_header.sh_type == elf.SHT_MW_CATS):
            fail("unsupport section type: 0x%08X = %s (%s)" % (
                section_header.sh_type,
                elf.SH_TYPES[section_header.sh_type] if section_header.sh_type in elf.SH_TYPES else "????",
                path))

        section_headers.append(section_header)

    # Create sections
    idx_sections = dict()
    for i, sheader in enumerate(section_headers):
        section = None
        if sheader.sh_type == elf.SHT_PROGBITS:
            section = ProgBitsSection(sheader, file)
        elif sheader.sh_type == elf.SHT_NOBITS:
            section = NoBitsSection(sheader)
        elif sheader.sh_type == elf.SHT_STRTAB:
            section = StringTableSection(sheader, file)
            obj.str_sections[i] = section
        elif sheader.sh_type == elf.SHT_SYMTAB:
            section = SymbolTableSection(sheader, file)
            obj.sym_sections[i] = section
        elif sheader.sh_type == elf.SHT_RELA:
            section = RelocationASection(sheader, file)
            obj.rela_sections[i] = section
        elif sheader.sh_type == elf.SHT_NULL:
            section = Section(sheader)
        elif sheader.sh_type == elf.SHT_MW_CATS:
            section = Section(sheader)

        assert section
        idx_sections[i] = section

    # Find .shstrtab containing section names
    if not header.e_shstrndx in idx_sections:
        fail("header.e_shstrndx out-of-bounds")
    shstrtab_section = idx_sections[header.e_shstrndx]
    if not isinstance(shstrtab_section, StringTableSection):
        fail("header.e_shstrndx is not a string table")

    # Get section names
    for i, section in idx_sections.items():
        if section.header.sh_type == elf.SHT_NULL:
            continue

        section.name = shstrtab_section.readString(section.header.sh_name)
        if section.name:
            obj.sections[section.name] = section

    # Find all symbols
    for symtab in obj.sym_sections.values():
        if not symtab.header.sh_link in obj.str_sections:
            fail("symbol table '%s' is not referenceing a valid string table section (sh_link: %i)" % (
                symtab.name, symtab.header.sh_link))

        symtab.object_offset = len(obj.symbols)
        strtab = obj.str_sections[symtab.header.sh_link]
        for i,sym in enumerate(symtab.symbols):
            if i == 0:
                symbol = NullSymbol(sym)
                symbol.object = obj
                obj.symbols.append(symbol)
                continue

            name = None
            if sym.st_name:
                name = strtab.readString(sym.st_name)
            symbol = None
            if sym.st_shndx == elf.SHN_UNDEF:
                symbol = UndefSymbol(sym, name)
            elif sym.st_shndx == elf.SHN_ABS:
                symbol = AbsoluteSymbol(sym, name, sym.st_value)
            else:
                if not sym.st_shndx in idx_sections:
                    fail("symbol '%s' has invalid section-id (st_shndx: %i)" % (name, sym.st_shndx))
                s = idx_sections[sym.st_shndx]
                symbol = OffsetSymbol(sym, name, idx_sections[sym.st_shndx], sym.st_value)

            assert symbol
            symbol.object = obj

            if symbol.name:
                if symbol.name in obj.symbol_map:
                    fail("multiple definition of '%s'" % symbol.name)
                obj.symbol_map[symbol] = symbol

            obj.symbols.append(symbol)

    # Find all relocations
    for rela_section in obj.rela_sections.values():
        if not rela_section.header.sh_link in obj.sym_sections:
            fail("relocation section '%s' is not referenceing a valid symbol table section (sh_link: %i)" % (
                symtab.name, rela_section.header.sh_link))
        if not rela_section.header.sh_info in idx_sections:
            fail("relocation section '%s' is not referenceing a valid section (sh_info: %i)" % (
                symtab.name, rela_section.header.sh_info))

        symtab = obj.sym_sections[rela_section.header.sh_link]
        modify = idx_sections[rela_section.header.sh_info]

        for rela in rela_section.relocations:
            type  = elf.R_TYPE(rela.r_info)
            sym_id = elf.R_SYM(rela.r_info)
            if not type in RELOCATION_NAMES:
                fail("unsupported relocation type: 0x%02X (in '%s')" % (type, path))

            if sym_id < 0 or sym_id >= len(symtab.symbols):
                fail("invalid symbol index: %i (%i symbols)" % (sym_id, len(symtab.symbols)))
            symbol = obj.symbols[symtab.object_offset + sym_id]

            relocation = None
            if type == 1:
                relocation = R_PPC_ADDR32(symbol, modify, rela.r_offset, rela.r_addend)
            elif type == 3:
                relocation = R_PPC_ADDR16(symbol, modify, rela.r_offset, rela.r_addend)
            elif type == 4:
                relocation = R_PPC_ADDR16_LO(symbol, modify, rela.r_offset, rela.r_addend)
            elif type == 5:
                relocation = R_PPC_ADDR16_HI(symbol, modify, rela.r_offset, rela.r_addend)
            elif type == 6:
                relocation = R_PPC_ADDR16_HA(symbol, modify, rela.r_offset, rela.r_addend)
            elif type == 10:
                relocation = R_PPC_REL24(symbol, modify, rela.r_offset, rela.r_addend)
            elif type == 11:
                relocation = R_PPC_REL14(symbol, modify, rela.r_offset, rela.r_addend)
            elif type == 109:
                relocation = R_PPC_EMB_SDA21(symbol, modify, rela.r_offset, rela.r_addend)

            assert relocation
            obj.relocations.append(relocation)

    return obj

def load_object_from_path(path) -> Object:
    with open(path, 'rb') as file:
        return load_f(path, path.parts[-1], file)
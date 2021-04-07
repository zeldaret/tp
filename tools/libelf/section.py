import os

from typing import Optional, IO, List

from . import elf
from .util import *

class Section:
    id: int
    header: elf.SectionHeader
    name: Optional[str]
    data: bytearray
    addr: int
    size: int

    def __init__(self, header: elf.SectionHeader):
        self.header = header
        self.name = None
        self.data = None
        self.size = header.sh_size
        self.section = None
        self.addr = None
        self.file_addr = None
        self.alignment = header.sh_addralign
        self.object = None


    def getVirtualAddr(self, offset=0):
        return self.addr + offset

class ProgBitsSection(Section):
    def __init__(self, header: elf.SectionHeader, file: IO):
        super().__init__(header)

        if header.sh_size > 0:
            file.seek(header.sh_offset, os.SEEK_SET)
            self.data = bytearray(file.read(header.sh_size))

class NoBitsSection(Section):
    def __init__(self, header: elf.SectionHeader):
        super().__init__(header)


class StringTableSection(ProgBitsSection):
    def __init__(self, header: elf.SectionHeader, file: IO):
        super().__init__(header, file)

    def readString(self, offset: int) -> Optional[str]:
        return parse_null_string(self.data[offset:])


class SymbolTableSection(Section):
    symbols: List[elf.Symbol]

    def __init__(self, header: elf.SectionHeader, file: IO):
        super().__init__(header)
        self.symbols = []

        if header.sh_entsize != 0x10:
            fail("symtab section: invalid entry size")
        if header.sh_size % header.sh_entsize != 0:
            fail("symtab section: invalid size (not divisible by entry size) ")

        count = header.sh_size // header.sh_entsize
        file.seek(header.sh_offset, os.SEEK_SET)
        for _ in range(count):
            symbol = elf.Symbol()
            symbol.read(file)
            self.symbols.append(symbol)

RELOCATION_NAMES = {
    0x0: "R_PPC_NONE",
    0x1: "R_PPC_ADDR32",
    0x3: "R_PPC_ADDR16",
    0x4: "R_PPC_ADDR16_LO",
    0x5: "R_PPC_ADDR16_HI",
    0x6: "R_PPC_ADDR16_HA",
    0xA: "R_PPC_REL24",
    0xB: "R_PPC_REL14",
    0x6D: "R_PPC_EMB_SDA21",
}

class RelocationASection(Section):
    relocations: List[elf.RelA]

    def __init__(self, header: elf.SectionHeader, file: IO):
        super().__init__(header)
        self.relocations = []

        if header.sh_entsize != 0x0C:
            fail("relocation section: invalid entry size")
        if header.sh_size % header.sh_entsize != 0:
            fail("relocation section: invalid size (not divisible by entry size) ")

        count = header.sh_size // header.sh_entsize
        file.seek(header.sh_offset, os.SEEK_SET)
        for _ in range(count):
            rela = elf.RelA()
            rela.read(file)
            self.relocations.append(rela)


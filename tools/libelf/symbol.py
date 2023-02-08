from typing import Optional, List, IO
from pathlib import Path

from . import elf
from .section import *

class Symbol:
    header: elf.Symbol
    name: Optional[str]
    bind: int
    type: int
    visibility: int
    addr: Optional[int]
    used: int
    section: Optional[Section]

    def __init__(self, header: elf.Symbol, name: Optional[str]):
        self.header = header
        self.name = name
        self.bind = elf.ST_BIND(header.st_info)
        self.type = elf.ST_TYPE(header.st_info)
        self.visibility = elf.ST_VISIBILITY(header.st_other)
        self.size = header.st_size
        self.object = None
        self.addr = None
        self.used = 0
        self.section = None
        self.object = None

    def isSection(self):
        return self.type == elf.STT_SECTION

    def isObject(self):
        return self.type == elf.STT_OBJECT

    def isFile(self):
        return self.type == elf.STT_FILE

    def isBindLocal(self):
        return self.bind == elf.STB_LOCAL

    def isBindGlobal(self):
        return self.bind == elf.STB_GLOBAL

    def getSection(self):
        fail("Symbol is not associated to any section")


class NullSymbol(Symbol):
    def __init__(self, header: elf.Symbol):
        super().__init__(header, None)

class UndefSymbol(Symbol):
    reference: Optional[Symbol]
    def __init__(self, header: elf.Symbol, name: Optional[str]):
        super().__init__(header, name)
        self.reference = None

    def resolveAddress(self):
        assert self.reference
        self.reference.resolveAddress()
        self.addr = self.reference.addr

    def getSection(self):
        assert self.reference
        return self.reference.getSection()

class AbsoluteSymbol(Symbol):
    address: int
    def __init__(self, header: elf.Symbol, name: Optional[str], value: int):
        super().__init__(header, name)
        self.address = value

    def resolveAddress(self):
        self.addr = self.address

class OffsetSymbol(Symbol):
    section: Section
    offset: int
    def __init__(self, header: elf.Symbol, name: Optional[str], section: Section, offset: int):
        super().__init__(header, name)
        self.section = section
        self.offset = offset

    def resolveAddress(self):
        self.addr = self.section.addr + self.offset

    def getSection(self):
        return  self.section

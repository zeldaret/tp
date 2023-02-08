
from typing import List, Dict, Tuple
from dataclasses import dataclass, field
from .symbol import *

@dataclass
class ExecutableSection:
    name: str
    addr: int
    size: int
    base_addr: int
    data: bytearray = field(repr=False)
    code_segments: List[Tuple[int,int]] = field(default_factory=list)
    relocations: Dict[int, "relib.Relocation"] = field(default_factory=dict,repr=False)
    first_padding: int = 0
    offset_padding: int = 0
    alignment: int = 4

    @property
    def start(self):
        return self.addr

    @property
    def end(self):
        return self.addr + self.size

    @property
    def is_code(self):
        return len(self.code_segments) > 0

    def __contains__(self, addr):
        return addr >= self.start and addr < self.end
        
@dataclass
class Section:
    name: str
    addr: int
    size: int
    data: bytearray = field(repr=False)
    symbols: List[Symbol] = field(default_factory=list, repr=False)
    relocations: Dict[int, "Relocation"] = field(
        default_factory=dict, repr=False)
    base_addr: int = None
    index: int = None
    offset: int = None
    alignment: int = 4

    @property
    def start(self):
        return self.addr

    @property
    def end(self):
        return self.addr + self.size

    def get_data(self, start, end):
        assert start >= self.start
        assert end <= self.end
        return self.data[start - self.start:end - self.start]

    def data_for_symbol(self, symbol):
        return self.get_data(symbol.start, symbol.end)

    def add_symbol(self, symbol: Symbol):
        self.symbols.append(symbol)

    def replace_symbol(self, old: Symbol, new: Symbol):
        new.section = self
        for i, sym in enumerate(self.symbols):
            if sym == old:
                self.symbols[i] = new
                return

        assert False

    def relocations_in_range(self, symbol_table, start, end):
        symbols = set()
        for addr, relocation in self.relocations.items():
            if addr < start or addr >= end:
                continue

            access_addr, symbol = symbol_table[-1, relocation, addr]
            symbols.add(symbol)
        return symbols



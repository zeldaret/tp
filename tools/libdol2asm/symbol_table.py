import librel

from intervaltree import Interval, IntervalTree
from dataclasses import dataclass, field
from typing import Dict, Tuple

from .globals import *

class AIT(IntervalTree):
    def __reduce__(self):
        super_value = super().__reduce__()
        value = (self.__class__,super_value[1])
        return value

    def count(self, start, end):
        return len(list(self.overlap(start, end)))

    def get_one_or_none(self, addr):
        data = list(self.at(addr))
        return data[0].data if len(data) == 1 else None

    def get_range_one_or_none(self, start, end):
        data = list(self.overlap(start, end))
        return data[0].data if len(data) == 1 else None
        

import traceback
@dataclass()
class GlobalSymbolTable:
    symbols: AIT = field(default_factory=AIT)
    section_addrs: Dict[Tuple[int,int], int] = field(default_factory=dict)

    def at_relocation(self, relocation, at):
        assert isinstance(relocation, librel.Relocation)
       
        section_addr = 0
        if relocation.module != 0:
            key = (relocation.module, relocation.section)
            if not key in self.section_addrs:
                error(f"relocation failed! looking for module={relocation.module}, section={relocation.section}")
                error(relocation)
                fatal_exit()
            section_addr = self.section_addrs[key]
            addr = section_addr + relocation.addend
        else:
            addr = relocation.addend
        
        symbol = self.symbols.get_one_or_none(addr)
        if not symbol:
            error(f"relocation failed!")
            error(f"address={addr:08x} not in module={relocation.module}, section={section_addr:08X}")
            fatal_exit()

        if symbol._module != relocation.module:
            error(f"relocation failed!")
            error(f"symbol found is in the wrong module. got={symbol._module}, expected={relocation.module}")
            fatal_exit()

        if not symbol.valid_reference(addr):
            error(f"relocation failed!")
            error(f"illegal access to symbol... the address={addr:08X} cannot be used to access symbol of type='{type(symbol).__name__}'")
            fatal_exit()

        return addr, symbol  
    
    def at_addr(self, module, addr):
        symbol = self.symbols.get_one_or_none(addr)
        if symbol:
            if module < 0 or symbol._module == module:
                if symbol.valid_reference(addr):
                    return symbol

        return None

    def always_get(self, addr):
        return self.symbols.get_one_or_none(addr)

    def at(self, module, addr, at = 0):
        if isinstance(addr, librel.Relocation):
            assert module < 0
            return self.at_relocation(addr, at)
        else:
            return self.at_addr(module, addr)

    def __getitem__(self, key, at = 0):
        return self.at(key[0], key[1], at)

    def has_symbol(self, module, addr) -> bool:
        if self.at(module, addr):
            return True
        else:
            return False

    def has(self, module, addr) -> bool:
        return self.has_symbol(module, addr)

    def resolve_set(self, addrs):
        return [y for y in [ self.at(*x) for x in addrs ] if y]

    def all(self, addrs):
        return set([ 
            symbol 
            for symbol in [ 
                self.at(-1, addr) 
                for addr in addrs 
            ] 
            if symbol ])

    def add_symbol(self, symbol: "Symbol"):
        if symbol.size > 0:
            self.symbols.addi(symbol.start, symbol.end, symbol)

    def remove_symbol(self, symbol: "Symbol"):
        if symbol.size > 0:
            self.symbols.remove_overlap(symbol.start, symbol.end)

    def add_section(self, module: "Module", section: "Section"):
        if len(section.symbols) <= 0:
            return

        for symbol in section.symbols:
            self.add_symbol(symbol)

    def add_module_section(self, module: int, section: int, addr: int):
        key = (module, section)
        assert not key in self.section_addrs
        self.section_addrs[key] = addr


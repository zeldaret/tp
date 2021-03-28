import struct

from dataclasses import dataclass, field
from typing import List, Set, Dict
from pathlib import Path

from ...builder import AsyncBuilder
from ...disassemble import AccessCollector
from ... import util
from ..base import *
from ..symbol import *
from .base import *

"""
@dataclass(eq=False)
class Block(ArbitraryData):
    sda_hack_references: Set[int] = field(default=None, repr=False)

    def _get_internal_references(self, context, symbol_table):
        collector = AccessCollector([])
        for x in collector.execute_generator(self.addr, self.data, self.size):
            pass
        sda_hack_symbols = [symbol_table[self._module, x]
                            for x in collector.sda_hack_references]
        self.sda_hack_references = set([
            (x._module, x.addr) 
            for x in sda_hack_symbols 
            if x
        ])
        symbols = [
            symbol_table[self._module, x.addr]
            for x in collector.accesses.values()
        ]
        return set([(x._module, x.addr) for x in symbols if x])
"""

@dataclass
class Block():
    identifier: Identifier
    addr: int
    size: int

    @property
    def start(self):
        return self.addr

    @property
    def end(self):
        return self.addr + self.size

    def asm_reference(self, addr):
        if addr != self.addr:
            return None
        return self.identifier.label

from .. import static_analyze

@dataclass(eq=False)
class ASMFunction(Function):
    blocks: List[Block] = field(default_factory=list, repr=False)
    include_path: Path = None
    asm: bool = True
    data: bytearray = None

    def gather_references(self, context, valid_range):
        addrs = static_analyze.function(self.data, self.addr, self.size)
        function_range = AddressRange(self.start, self.end)
        self.references = [ 
            addr 
            for addr in addrs.values() 
            if addr in valid_range and not addr in function_range
        ]

    async def export_function_body(self, exporter, builder: AsyncBuilder):
        await builder.write(f" {{")
        await builder.write(f"\tnofralloc")
        await builder.write(f"#include \"{self.include_path}\"")
        await builder.write(f"}}")

    async def export_declaration(self, exporter, builder: AsyncBuilder):
        assert self.padding == 0

        await builder.write("#pragma push")
        await builder.write("#pragma optimization_level 0")
        await builder.write("#pragma optimizewithasm off")
        if self.alignment:
            await builder.write(f"#pragma function_align {self.alignment}")

        await self.export_function_header(exporter, builder, forward=False, specialize_templates=self.has_template)
        await self.export_function_body(exporter, builder)

        await builder.write("#pragma pop")
        await builder.write("")

    @staticmethod
    def create(section, group):
        first = group[0]
        last = group[-1]
        start = first.start
        end = last.end

        blocks = []
        for symbol in group:
            #block = Block(
            #    Identifier("lbl", symbol.addr, None),
            #    symbol.addr, symbol.size,
            #    data=section.data_for_symbol(symbol))
            block = Block(
                Identifier("lbl", symbol.addr, None),
                symbol.addr, symbol.size,
            )
            blocks.append(block)

        # Calculate additional padding from zeros at the end of the function
        data = section.get_data(start, end)
        end_padding = 0
        last_data = list(util.chunks(data, 4))
        for x in last_data[::-1]:
            if struct.unpack('>I', x)[0] != 0:
                break
            end_padding += 4

        if end_padding > 0:
            data = data[:-end_padding]
            end -= end_padding

        return ASMFunction(
            Identifier("func", start, first.name),
            addr=start,
            size=end - start,
            padding=last.padding + end_padding,
            alignment=0,
            blocks=blocks,
            source=first.source,
            data=data)

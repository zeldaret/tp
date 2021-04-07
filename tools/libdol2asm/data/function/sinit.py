import struct

from dataclasses import dataclass, field
from typing import List, Set, Dict
from pathlib import Path

from ...builder import AsyncBuilder
from ...disassemble import AccessCollector
from ... import util
from .. import static_analyze
from ..base import *
from ..symbol import *
from .base import *
from .asm import *

@dataclass(eq=False)
class SInitFunction(ASMFunction):
    async def export_declaration(self, exporter, builder: AsyncBuilder):
        await super().export_declaration(exporter, builder)

        await builder.write("#pragma push")
        await builder.write("#pragma force_active on")
        await builder.write(f"SECTION_CTORS void* const _ctors_{self.addr:08X} = (void*){self.label};")
        await builder.write("#pragma pop")
        await builder.write("")

    @staticmethod
    def create(section, group):
        # TODO: This code is the same as ASMFunction.create
        first = group[0]
        last = group[-1]
        start = first.start
        end = last.end

        blocks = []
        for symbol in group:
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

        return SInitFunction(
            Identifier("func", start, first.name),
            addr=start,
            size=end - start,
            padding=last.padding + end_padding,
            alignment=0,
            blocks=blocks,
            source=first.source,
            data=data)

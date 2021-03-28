import struct

from dataclasses import dataclass, field
from typing import List, Tuple

from ..builder import AsyncBuilder
from ..globals import *
from .. import util
from .base import *
from .identifier import *
from .literal import *

@dataclass(eq=False)
class ReferenceArray(ArbitraryData):
    @property
    def element_size(self):
        return 4

    def array_type(self):
        size = self.size // self.element_size
        padding = self.padding // self.element_size
        
        if size == 1 and padding == 0:
            return self.element_type()
        else:
            return PaddingArrayType.create(
                self.element_type(),
                self.size // self.element_size,
                self.padding // self.element_size)

    def valid_reference(self, addr):
        return addr % 4 == 0

    def values(self):
        return Integer.u32_from(self.data)
    def gather_references(self, context, valid_range):
        self.references = [ addr for addr in self.values() if addr in valid_range ]

    def export_reference_value(self, symbol_table, index, addr) -> str:
        symbol = symbol_table[-1, addr]
        if symbol:
            return symbol.cpp_reference(self, addr)
        elif addr == 0:
            return "NULL"
        else:
            return f"0x{addr:08X}"

    async def export_declaration_body(self, exporter, builder: AsyncBuilder):
        values = self.values()

        if self.total_element_count == 1:
            await builder.write(f" = (void*){self.export_reference_value(exporter.gst, 0, values[0])};")
        else:
            await builder.write(f" = {{")
            for index, addr in enumerate(values):
                value = self.export_reference_value(exporter.gst, index, addr)
                await builder.write(f"\t(void*){value},")

            if self.padding > 0:
                await builder.write("\t/* padding */")
                for i in range(self.padding // self.element_size):
                    await builder.write("\tNULL,")
            await builder.write("};")


    @staticmethod
    def create(identifier: Identifier, addr: int, data: bytearray, padding_data: bytearray) -> "ReferenceArray":
        assert sum(padding_data) == 0
        assert len(data) % 4 == 0
        assert len(padding_data) % 4 == 0
        return ReferenceArray(
            identifier=identifier,
            data_type=PointerType(VOID),
            addr=addr,
            data = data,
            size=len(data),
            padding_data = padding_data,
            padding = len(padding_data),
        )
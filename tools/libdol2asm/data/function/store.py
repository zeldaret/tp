

from dataclasses import dataclass, field
from capstone.ppc import PPC_REG_R3

from ...builder import AsyncBuilder
from ...types import *
from .base import *


@dataclass(eq=False)
class StoreFunction(Function):
    async def export_store(self, exporter, builder):
        assert False

    async def export_function_body(self, exporter, builder: AsyncBuilder):
        await builder.write(f" {{")
        await self.export_store(exporter, builder)
        await builder.write(f"}}")


@dataclass(eq=False)
class Store_R3_OffsetRX_Function(StoreFunction):
    dst: int = 0
    dst_offset: int = 0
    src: int = 0
    store_type: Type = None

    def calculate_params(self):
        params = {}

        gr = PPC_REG_R3
        if self.has_class:
            if self.demangled_name and self.demangled_name.require_specialization:
                params[gr] = "_this"
            else:
                params[gr] = "this"
            gr += 1

        for i, arg in enumerate(self.argument_types):
            params[gr] = f"param_{i}"
            gr += 1

        return params

    async def export_store(self, exporter, builder):
        params = self.calculate_params()
        dst = params[self.dst]
        src = params[self.src]
        if self.dst_offset > 0:
            dst = f"(((u8*){params[self.dst]})+{self.dst_offset}) /* {params[self.dst]}->field_0x{self.dst_offset:x} */"

        pointer_type = PointerType(self.store_type)
        await builder.write(f"\t*({pointer_type.type()}){dst} = ({self.store_type.type()})({src});")

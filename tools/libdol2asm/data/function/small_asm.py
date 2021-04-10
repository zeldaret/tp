
from dataclasses import dataclass, field
from typing import List

from ...builder import AsyncBuilder
from .base import *

@dataclass(eq=False)
class SmallASMFunction(Function):
    asm: bool = True
    insts: List[str] = field(default_factory=list)

    async def export_function_body(self, exporter, builder: AsyncBuilder):
        await builder.write(f" {{")
        await builder.write(f"\t// clang-format off")
        await builder.write(f"\tnofralloc")
        for inst in self.insts:
            await builder.write(f"\t{inst}")
        await builder.write(f"\t// clang-format on")
        await builder.write(f"}}")
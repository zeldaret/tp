
from dataclasses import dataclass, field

from ...builder import AsyncBuilder
from .base import *

@dataclass(eq=False)
class ReturnFunction(Function):
    return_value: str = None

    def export_return_value(self):
        return self.return_value

    async def export_function_body(self, exporter, builder: AsyncBuilder):
        return_value = self.export_return_value()
        await builder.write(f" {{")
        if return_value:
            await builder.write(f"\treturn {return_value};")
        else:
            await builder.write(f"\t/* empty function */")
        await builder.write(f"}}")

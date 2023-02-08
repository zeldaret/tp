
from dataclasses import dataclass, field

from ...builder import AsyncBuilder
from .base import *

@dataclass(eq=False)
class ReturnFunction(Function):
    def export_return_value(self, symbol_table):
        assert False

    async def export_function_body(self, exporter, builder: AsyncBuilder):
        return_value = self.export_return_value(exporter.gst)
        await builder.write(f" {{")
        if return_value:
            await builder.write(f"\treturn {return_value};")
        else:
            await builder.write(f"\t/* empty function */")
        await builder.write(f"}}")

@dataclass(eq=False)
class CustomReturnFunction(ReturnFunction):
    return_value: str = None

    def export_return_value(self, symbol_table):
        return self.return_value

@dataclass(eq=False)
class SymbolReturnFunction(ReturnFunction):
    symbol_addr: int = 0
    load_or_reference: bool = True
    load_type: Type = None
    cast_type: Type = None

    def gather_references(self, context, valid_range):
        self.references = set([ self.symbol_addr ])

    def export_return_value(self, symbol_table):
        symbol = symbol_table[-1, self.symbol_addr]
        assert symbol
        name = symbol.cpp_reference(self, self.symbol_addr)
        load_type = PointerType(self.load_type)
        dereference = ""
        cast = ""
        if self.load_or_reference:
            dereference = "*"
        if self.cast_type:
            cast = f"({self.cast_type.type()})"
        return f"{cast}{dereference}({load_type.type()})({name})"

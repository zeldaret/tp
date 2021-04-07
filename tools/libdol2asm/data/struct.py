from dataclasses import dataclass, field
from typing import List

from ..builder import AsyncBuilder
from .. import util
from ..types import *
from .base import *
from .identifier import *

@dataclass(eq=False)
class Structure(ArbitraryData):
    members: List[Symbol] = field(default_factory=list)

    def valid_reference(self, addr):
        for field in self.members:
            if field.addr == addr:
                return True
        return False

    def cpp_reference(self, accessor, addr):
        for field in self.members:
            if field.addr == addr:
                offset = field.addr - self.addr
                return f"(((char*)&{self.identifier.label})+0x{offset:X}) /* {field.identifier.name} */"

        raise Dol2ZelException(
            f"invalid reference addr 0x{addr:08X} for {type(self).__name__}\n{self}")

    def asm_reference(self, addr):
        for field in self.members:
            if field.addr == addr:
                offset = field.addr - self.addr
                return f"{self.identifier.label}+0x{offset:X}"

        return None

    def set_mlts(self, module: int, library: str, translation_unit: str, section: str):
        super().set_mlts(module, library, translation_unit, section)
        for member in self.members:
            member.set_mlts(module, library, translation_unit, section)

    async def export_declaration_head(self, exporter, builder: AsyncBuilder):
        has_data = any([ not not x.data for x in self.members ])
        if not has_data:
            for field in self.members:
                await builder.write(f"\t/* {field.addr:08X} {field.size:04X}+{field.padding:02X} {field.identifier.label} {field.identifier.name} */")

        await super().export_declaration_head(exporter, builder)

    async def export_declaration_body(self, exporter, builder: AsyncBuilder):
        has_data = any([ not not x.data for x in self.members ])
        if has_data:
            await builder.write(f" = {{")
            for field in self.members:
                await builder.write(f"\t/* {field.addr:08X} {field.size:04X}+{field.padding:02X} {field.identifier.label} {field.identifier.name} */")
                await self.export_u8_data(builder, field.data)
                
                if field.padding_data:
                    assert field.padding == len(field.padding_data)
                    await builder.write("\t/* padding */")
                    await self.export_u8_data(builder, field.padding_data)

            if self.padding_data:
                assert self.padding == len(self.padding_data)
                await builder.write("\t/* padding */")
                await self.export_u8_data(builder, self.padding_data)

            await builder.write("};")
        else:
            await builder.write(";")

    @staticmethod
    def create(section, group):
        first = group[0]
        last = group[-1]
        start = first.start
        end = last.end

        members = []
        for field in group:
            members.append(field)

        padding = last.padding
        padding_data = last.padding_data
        last.padding = 0
        last.padding_data = bytes()

        return Structure(Identifier("struct", start, None),
                          addr=start,
                          size=end - start,
                          padding=padding,
                          padding_data=padding_data,
                          data_type = U8,
                          members=members,
                          source=first.source)

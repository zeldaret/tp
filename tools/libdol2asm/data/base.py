
from dataclasses import dataclass, field

from ..builder import AsyncBuilder
from .. import util
from .symbol import *


@dataclass(eq=False)
class ArbitraryData(Symbol):
    data: bytes = field(default=None, repr=False)
    padding_data: bytes = field(default=None, repr=False)
    zero_length: bool = False
    always_extern: bool = False

    @property
    def has_body(self):
        return not self.zero_length

    @property
    def is_static(self):
        if self.always_extern:
            return False

        s = self.reference_count.static
        e = self.reference_count.extern
        r = self.reference_count.rel
        static_by_references = (s >= 0 and e == 0 and r == 0)
        static_by_literal = self.identifier.label.startswith("lit_")
        return static_by_references or static_by_literal

    @property
    def requires_force_active(self):
        return self.is_static and self.reference_count.total == 0

    @property
    def export_as_static(self):
        if self.always_extern:
            return False
        return True

    @property
    def is_class_symbol(self):
        # @!game
        # don't generate static class variables for 'cNullVec__6Z2Calc', because it will not compile.
        # Z2Calc::cNullVec seems to be static data that is initialized in the class definition, thus,
        # every translation unit which uses Z2Calc will have a copy of the Z2Calc::cNullVec in the data
        # section. Could not find a way to make this compile without easily.
        if self.identifier.name == "cNullVec__6Z2Calc":
            return False
        return self.demangled_name and self.has_class and not self.has_template

    @property
    def element_size(self):
        return 1

    @property
    def total_element_count(self):
        total = (self.size // self.element_size) + \
            (self.padding // self.element_size)
        return total

    def element_type(self):
        type = self.data_type
        if self._section == ".rodata":
            type = ConstType(type)
        if self._section == ".extabindex":
            type = ConstType(type)
        if self._section == ".extab":
            type = ConstType(type)
        if self._section.startswith(".ctors"):
            type = ConstType(type)
        if self._section.startswith(".dtors"):
            type = ConstType(type)
        if self._section.startswith(".init"):
            type = ConstType(type)
        return type

    def array_type(self):
        if self.zero_length:
            return ZeroArrayType.create(self.element_type())
        return PaddingArrayType.create(
            self.element_type(),
            self.size // self.element_size,
            self.padding // self.element_size)

    def cpp_reference(self, accessor, addr):
        name = self.declaration_name(forward=False, c_export=False,full_qualified_name=True)
        if addr == self.addr:
            return f"&{name}"
        else:
            offset = addr - self.addr
            return f"(((char*)&{name})+0x{offset:X})"

    def declaration_name(self, forward: bool,
                         c_export: bool,
                         full_qualified_name: bool):
        if not self.is_class_symbol or c_export:
            return self.identifier.label

        if full_qualified_name:
            return self.demangled_name.to_str()
        else:
            return self.demangled_name.last.to_str()

    async def export_declaration_header(self, exporter,
                                        builder: AsyncBuilder,
                                        forward: bool,
                                        c_export: bool,
                                        full_qualified_name: bool):
        name = self.declaration_name(c_export=c_export,
                                     forward=forward,
                                     full_qualified_name=full_qualified_name)

        decl_type = self.array_type()
        await builder.write_nonewline(decl_type.decl(name))

    async def export_forward_references(self,
                                        exporter,
                                        builder: AsyncBuilder,
                                        c_export: bool = False):
        if not c_export:
            return

        if not self.is_class_symbol:
            if self.is_static and self.export_static:
                if not self.require_forward_reference:
                    return

        await self.export_section_header(builder)

        if not self.is_class_symbol:
            if not (self.is_static and self.export_static):
                await self.export_extern(builder)

        await self.export_declaration_header(exporter, builder,
                                             forward=True,
                                             c_export=c_export,
                                             full_qualified_name=False)
        await builder.write(";")

    async def export_declaration_head(self, exporter, builder: AsyncBuilder):
        name = self.declaration_name(c_export=False,
                                     forward=False,
                                     full_qualified_name=True)

        decl_type = self.array_type()

        if not self.is_class_symbol:
            # for empty symbols that should be exported, we need to double declare it.
            # otherwise, the compiler thinks that we're not actual declaring it.
            is_extern = not (self.is_static and self.export_as_static)
            if not self.data and is_extern:
                await self.export_section(builder)
                if self.force_section:
                    await self.export_section_header(builder)

                await self.export_extern(builder)
                await builder.write_nonewline(decl_type.decl(name))
                await builder.write(";")

        await self.export_section(builder)
        if self.force_section:
            await self.export_section_header(builder)

        if not self.is_class_symbol:
            if not is_extern:
                await self.export_static(builder)
            elif self.data and is_extern:
                await self.export_extern(builder)

        await builder.write_nonewline(decl_type.decl(name))

    async def export_declaration_body(self, exporter, builder: AsyncBuilder):
        if self.data:
            assert self.size == len(self.data)
            if self.alignment > 0:
                await builder.write_nonewline(f" ALIGN_DECL({self.alignment})")

            await builder.write(f" = {{")
            await self.export_u8_data(builder, self.data)

            if self.padding_data:
                assert self.padding == len(self.padding_data)
                await builder.write("\t/* padding */")
                await self.export_u8_data(builder, self.padding_data)

            await builder.write("};")
        else:
            if self.alignment > 0:
                await builder.write_nonewline(f" ALIGN_DECL({self.alignment})")

            await builder.write(";")

    async def export_declaration(self, exporter, builder: AsyncBuilder):
        if self.requires_force_active:
            await builder.write(f"#pragma push")
            await builder.write(f"#pragma force_active on")

        await self.export_declaration_head(exporter, builder)
        await self.export_declaration_body(exporter, builder)

        if self._section == ".rodata":
            await builder.write(f"COMPILER_STRIP_GATE({self.addr:08X}, {self.cpp_reference(None, self.addr)});")
            # await builder.write_nonewline("SECTION_DEAD ")
            # await builder.write_nonewline("void* const ")
            # await builder.write_nonewline(f"cg_{self.addr:08X} = (void*)(")
            # await builder.write_nonewline(self.cpp_reference(None, self.addr))
            # await builder.write(f");")

        if self.requires_force_active:
            await builder.write(f"#pragma pop")

    @staticmethod
    def create_with_data(identifier, addr, data, padding_data):
        size = len(data)
        padding_size = len(padding_data)

        return ArbitraryData(identifier=identifier,
                             addr=addr,
                             size=size,
                             data=data,
                             data_type=U8,
                             padding=padding_size,
                             padding_data=padding_data)

    @staticmethod
    def create_without_data(identifier, addr, size, padding_size):
        return ArbitraryData(identifier=identifier,
                             addr=addr,
                             size=size,
                             data=[],
                             data_type=U8,
                             padding=padding_size,
                             padding_data=[])

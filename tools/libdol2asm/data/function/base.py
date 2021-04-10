import libdemangle

from dataclasses import dataclass, field
from typing import List

from ...builder import AsyncBuilder
from ... import util
from ...types import *
from ..symbol import *

special_func_no_return = set([
    "ct",
    "dt"
])


@dataclass(eq=False)
class Function(Symbol):
    return_type: Type = None
    argument_types: List[Type] = field(default_factory=list)
    special_func_name: str = None
    func_is_const: bool = False
    asm: bool = False

    @property
    def uses_any_templates(self):
        if self.demangled_name and self.demangled_name.has_template:
            return True

        is_templated = [False]

        def callback(tp, depth):
            if isinstance(tp, NamedType):
                is_templated[0] |= tp.has_template
            if is_templated[0]:
                return True

        if self.return_type:
            self.return_type.traverse(callback, 0)
        for arg_type in self.argument_types:
            arg_type.traverse(callback, 0)

        return is_templated[0]

    @property
    def is_static(self):
        s = self.reference_count.static
        e = self.reference_count.extern
        r = self.reference_count.rel
        static_by_references = (s > 0 and e == 0 and r == 0)
        if not static_by_references:
            return False

        if not self.demangled_name:
            # very arbitrary, but function begining with __ are often special
            if self.identifier.name and self.identifier.name.startswith("__"):
                return False
            return True

        return not self.uses_any_templates

    @property
    def label(self):
        return self.identifier.label

    def function_name(self, c_export: bool, full_qualified_name: bool):
        if not self.demangled_name or c_export:
            return self.identifier.label

        if self.demangled_name.require_specialization:
            return self.identifier.label

        name = self.demangled_name
        if self.special_func_name and self.has_class:
            # fix up the constructor and destructor if the function is template specialized
            special_name = None
            if self.special_func_name == "ct":
                special_name = name.second_last.to_str()
            if self.special_func_name == "dt":
                special_name = "~" + name.second_last.to_str()

            if special_name:
                name = NamedType(
                    self.demangled_name.names[:-1] + [ClassName(special_name, [])])

        if full_qualified_name:
            return name.to_str()
        else:
            return name.last.to_str()

    def valid_reference(self, addr):
        return addr % 4 == 0

    def cpp_reference(self, accessor, addr):
        if addr == self.addr:
            return self.label
        else:
            offset = addr - self.addr
            return f"(((char*){self.label})+0x{offset:X})"

    def relocation_symbols(self, context, symbol_table, section):
        symbols = section.relocations_in_range(
            symbol_table, self.start, self.end)
        return symbols

    def types(self):
        return set()

    async def export_function_header(self, exporter,
                                     builder: AsyncBuilder,
                                     forward: bool,
                                     c_export: bool,
                                     full_qualified_name: bool):
        # TODO: remove or refactor
        if False:
            await builder.write(f"// {self.is_static} {self.uses_any_templates}")

            lines = []

            def callback(tp, depth):
                pad = '\t' * depth
                template = False
                if isinstance(tp, NamedType):
                    template = tp.has_template
                lines.append(f"// {pad} {tp.type()} {template}")

            if self.return_type:
                self.return_type.traverse(callback, 0)
            for arg_type in self.argument_types:
                arg_type.traverse(callback, 0)

            for line in lines:
                await builder.write(line)

        arg_type = []
        if forward:
            arg_type = [x.type(specialize_templates=True) for x in self.argument_types]
        else:
            arg_type = [
                x.decl(f"param_{i}",specialize_templates=True) 
                for i, x in enumerate(self.argument_types)
            ]

        if self.demangled_name and self.demangled_name.require_specialization:
            arg_type = [f"void* _this", *arg_type]

        arg_type = ", ".join(arg_type)

        if self._section == ".init":
            await builder.write_nonewline(f"SECTION_INIT ")
        elif c_export or (self.demangled_name and self.demangled_name.require_specialization and full_qualified_name):
            await builder.write_nonewline(f"extern \"C\" ")

        if self.is_static and not self.has_class:
            await self.export_static(builder)
        if self.asm and not forward:
            await builder.write_nonewline(f"asm ")

        return_type = self.return_type
        if not self.return_type:
            return_type = VOID

        is_special_function = (
            self.special_func_name in special_func_no_return)
        specialized = (
            self.demangled_name and self.demangled_name.require_specialization)
        if c_export:
            await builder.write_nonewline(f"{return_type.type()} ")
            await builder.write_nonewline(f"{self.function_name(c_export=True,full_qualified_name=full_qualified_name)}")

            # specialized function will have the arguments even when exported as C
            if specialized:
                await builder.write_nonewline(f"({arg_type})")
            else:
                await builder.write_nonewline(f"()")
        else:
            if not is_special_function or specialized:
                await builder.write_nonewline(f"{return_type.type()} ")

            await builder.write_nonewline(f"{self.function_name(c_export=False, full_qualified_name=full_qualified_name)}")
            await builder.write_nonewline(f"({arg_type})")
            if self.has_class and self.func_is_const:
                if specialized:
                    await builder.write_nonewline(f" /* const */")
                else:
                    await builder.write_nonewline(f" const")

    async def export_forward_references(self, exporter,
                                        builder: AsyncBuilder,
                                        c_export: bool = False):
        # forward reference will only happen for c style functions. other functions willö
        # will be forward referenced using the cpp-exporter types finder.
        if not c_export:
            return

        await self.export_function_header(exporter, builder,
                                          forward=True,
                                          c_export=c_export,
                                          full_qualified_name=False)
        await builder.write(f";")

    async def export_function_body(self, exporter, builder: AsyncBuilder):
        assert False

    async def export_declaration(self, exporter, builder: AsyncBuilder):
        assert self.padding == 0

        if self.alignment:
            await builder.write("#pragma push")
            await builder.write(f"#pragma function_align {self.alignment}")

        await self.export_function_header(exporter, builder, forward=False, c_export=False, full_qualified_name=True)
        await self.export_function_body(exporter, builder)

        if self.alignment:
            await builder.write("#pragma pop")
        await builder.write("")

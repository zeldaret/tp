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
    func_name: libdemangle.QualifiedName = None
    special_func_name: str = None
    func_is_const: bool = False
    template_index: int = -1
    asm: bool = False

    @property
    def uses_any_templates(self):
        if self.func_name and self.func_name.has_template:
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
    def uses_class_template(self):
        return self.func_name and self.func_name.has_template

    @property
    def is_static(self):
        static = super().is_static
        if not static:
            return False

        if not self.func_name:
            return True

        return not self.uses_any_templates

    @property
    def label(self):
        return self.identifier.label

    def function_name(self,
                      original: bool = False,
                      full_qualified_name: bool = True,
                      without_template: bool = False,
                      specialize_templates: bool = False):

        if not self.func_name or original:
            return self.identifier.label

        name = self.func_name
        if self.special_func_name and self.has_class and specialize_templates:
            # fix up the constructor and destructor if the function is template specialized
            special_name = None
            if self.special_func_name == "ct":
                special_name = name.second_last.to_str(specialize_templates=specialize_templates,
                                                        without_template=without_template)
            if self.special_func_name == "dt":
                special_name = "~" + name.second_last.to_str(specialize_templates=specialize_templates,
                                                        without_template=without_template)

            if special_name:
                name = NamedType(
                    self.func_name.names[:-1] + [ClassName(special_name, [])])

        if full_qualified_name:
            return name.to_str(specialize_templates=specialize_templates,
                                                        without_template=without_template)
        else:
            return name.last.to_str(specialize_templates=specialize_templates,
                                                        without_template=without_template)

    def is_demangled(self):
        return self.func_name != None

    def valid_reference(self, addr):
        return addr % 4 == 0

    def cpp_reference(self, accessor, addr):
        if addr == self.addr:
            return self.label
        else:
            offset = addr - self.addr
            return f"(((char*){self.label})+0x{offset:X})"

    def relocation_symbols(self, context, symbol_table, section):
        symbols = section.relocations_in_range(symbol_table, self.start, self.end)
        return symbols

    def types(self):
        return set()

    @property
    def has_class(self):
        return self.func_name and self.func_name.has_class

    @property
    def has_template(self):
        return self.func_name and self.func_name.has_template

    async def export_function_header(self, exporter,
                                     builder: AsyncBuilder,
                                     forward: bool,
                                     original: bool = False,
                                     full_qualified_name: bool = True,
                                     specialize_templates: bool = False,
                                     without_template: bool = False,
                                     comment_arguments: bool = False,
                                     template_args: List[str] = None):
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

        declspec = "extern \"C\" "
        if not original and self.is_demangled():
            declspec = ""

        if self._section == ".init":
            declspec = "SECTION_INIT "

        await builder.write_nonewline(f"{declspec}")
        if self.asm and not forward:
            await builder.write_nonewline(f"asm ")

        if full_qualified_name and not self.has_class:
            # this symbol is only referenced by other symbol in the same translation unit
            if self.is_static:
                await builder.write_nonewline(f"static ")

        if not self.special_func_name in special_func_no_return or original:
            return_type = self.return_type
            if not self.return_type:
                return_type = VOID

            await builder.write_nonewline(f"{return_type.type(specialize_templates,without_template)} ")
        await builder.write_nonewline(f"{self.function_name(original, full_qualified_name, without_template, specialize_templates)}")

        arg_type = ""
        if not original and self.is_demangled():
            if forward:
                arg_type = ", ".join([x.type(specialize_templates,without_template) for x in self.argument_types])
            else:
                arg_type = ", ".join([x.decl(f"param_{i}",specialize_templates,without_template) for i, x in zip(
                    range(len(self.argument_types)), self.argument_types)])

        if template_args:
            args = ", ".join(template_args)
            await builder.write_nonewline(f"<{args}>")

        if comment_arguments:
            arg_type = f"/* {arg_type} */"
        await builder.write_nonewline(f"({arg_type})")
        if not original and self.has_class and self.func_is_const:
            await builder.write_nonewline(f" const")

    async def export_forward_references(self, exporter,
                                        builder: AsyncBuilder,
                                        c_export: bool = False,
                                        full_qualified_name: bool = True,
                                        template_args: List[str] = None):
        if not template_args:
            template_args = []

        if c_export:
            # export unmangled name
            await self.export_function_header(exporter, builder, forward=True, original=True)
            await builder.write(f";")
            return

        if full_qualified_name:
            if self.is_demangled():
                # forward references are not written for class functions
                if not self.has_class:
                    await self.export_function_header(exporter, builder, forward=True, full_qualified_name=True, specialize_templates=True)
                    await builder.write(f";")
        else:
            # export the function as a class method
            await self.export_function_header(exporter, builder, forward=True, full_qualified_name=False, template_args=template_args)
            await builder.write(f";")

    async def export_function_body(self, exporter, builder: AsyncBuilder):
        assert False

    async def export_declaration(self, exporter, builder: AsyncBuilder):
        assert self.padding == 0

        if self.alignment:
            await builder.write("#pragma push")
            await builder.write(f"#pragma function_align {self.alignment}")

        await self.export_function_header(exporter, builder, forward=False, specialize_templates=self.has_template)
        await self.export_function_body(exporter, builder)

        if self.alignment:
            await builder.write("#pragma pop")
        await builder.write("")


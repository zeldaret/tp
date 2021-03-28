from dataclasses import dataclass, field
from typing import List, Set

from .base import *
from .named import *


@dataclass(frozen=True, eq=True)
class FunctionType(Type):
    inner: Type
    return_type: Type
    argument_types: List[Type] = field(default_factory=list)
    inner_class: NamedType = None

    def __hash__(self):
        return hash((self.inner, self.return_type, tuple(self.argument_types), self.inner_class))

    def type(self,
             specialize_templates: bool = False,
             without_template: bool = False) -> str:
        return self.decl("",
                         specialize_templates=specialize_templates,
                         without_template=without_template)

    def traverse(self, callback, depth):
        should_exit = callback(self, depth)
        if not should_exit:
            self.inner.traverse(callback, depth + 1)
            self.return_type.traverse(callback, depth + 1)
            for arg in self.argument_types:
                arg.traverse(callback, depth + 1)
            if self.inner_class:
                self.inner_class.traverse(callback, depth + 1)

    def decl(self,
             label: str,
             specialize_templates: bool = False,
             without_template: bool = False) -> str:
        class_name = ""
        if self.inner_class:
            inner = self.inner_class.type(specialize_templates=specialize_templates,
                                          without_template=without_template)
            class_name = f"{inner}::"

        return_type = self.return_type.type(specialize_templates=specialize_templates,
                                            without_template=without_template)
        inner_type = self.inner.type(specialize_templates=specialize_templates,
                                     without_template=without_template)
        args = ", ".join([x.type(specialize_templates=specialize_templates,
                                 without_template=without_template) for x in self.argument_types])
        return f"{return_type} ({class_name}{inner_type})({args})"

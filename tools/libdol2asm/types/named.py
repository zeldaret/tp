
from dataclasses import dataclass, field
from typing import List, Set

from .base import *


@dataclass(eq=True)
class ClassName:
    name: str
    templates: List[Type] = field(default_factory=list)
    template_index: int = -1

    def __hash__(self):
        return hash((self.name, tuple(self.templates)))

    def to_str(self, specialize_templates: bool = False, without_template: bool = False) -> str:
        if specialize_templates and self.template_index >= 0:
            return f"{self.name}__template{self.template_index}"
        elif not without_template and self.templates:
            args = ", ".join([x.type() for x in self.templates])
            return f"{self.name}<{args}>"
        return self.name

    def traverse(self, callback, depth):
        for template in self.templates:
            template.traverse(callback, depth)


@dataclass(frozen=True, eq=True)
class NamedType(Type):
    names: List[ClassName]

    def __hash__(self):
        return hash(tuple(self.names))

    def type(self,
             specialize_templates: bool = False,
             without_template: bool = False) -> str:
        return "::".join([x.to_str(specialize_templates=specialize_templates, without_template=without_template) for x in self.names])

    def to_str(self,
               specialize_templates: bool = False,
               without_template: bool = False) -> str:
        return self.type(specialize_templates=specialize_templates,
                         without_template=without_template)

    def traverse(self, callback, depth):
        should_exit = callback(self, depth)
        if not should_exit:
            for name in self.names:
                name.traverse(callback, depth + 1)

    @property
    def has_class_template(self) -> bool:
        return any([len(x.templates) > 0 for x in self.names[:-1]])

    @property
    def has_template(self) -> bool:
        return any([len(x.templates) > 0 for x in self.names])

    @property
    def has_class(self) -> bool:
        return len(self.names) > 1

    @property
    def top_level(self) -> ClassName:
        return self.names[0]

    @property
    def last(self) -> ClassName:
        return self.names[-1]

    @property
    def second_last(self) -> ClassName:
        return self.names[-2]

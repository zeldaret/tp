from dataclasses import dataclass, field
from typing import Set

from .base import *

@dataclass(frozen=True,eq=True)
class ReferenceType(Type):
    of: Type

    def __hash__(self):
        return hash(("reference", self.of))

    def type(self,
             specialize_templates: bool = False,
             without_template: bool = False) -> str:
        return f"{self.of.type(specialize_templates=specialize_templates,without_template=without_template)}&"

    def traverse(self, callback, depth):
        should_exit = callback(self, depth)
        if not should_exit:
            self.of.traverse(callback, depth + 1)
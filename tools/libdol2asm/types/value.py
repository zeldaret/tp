
from dataclasses import dataclass, field
from .base import *

@dataclass(frozen=True,eq=True)
class ValueType(Type):
    value: int

    def __hash__(self):
        return hash(self.value)

    def type(self,
             specialize_templates: bool = False,
             without_template: bool = False) -> str:
        return f"{self.value}"

    @property
    def is_builtin(self):
        return True
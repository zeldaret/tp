from dataclasses import dataclass, field
from .base import *

@dataclass(frozen=True,eq=True)
class VariadicType(Type):

    def __hash__(self):
        return hash("VARIADIC_TYPE")

    def type(self,
             specialize_templates: bool = False,
             without_template: bool = False) -> str:
        return f"..."

    def decl(self,
             label: str,
             specialize_templates: bool = False,
             without_template: bool = False) -> str:
        return f"..."

    @property
    def is_builtin(self):
        return True
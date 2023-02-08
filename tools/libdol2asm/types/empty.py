from dataclasses import dataclass, field
from .base import *

@dataclass(frozen=True,eq=True)
class EmptyType(Type):
    def __hash__(self):
        return hash("EMPTY")
        
    def type(self,
             specialize_templates: bool = False,
             without_template: bool = False) -> str:
        return ""
from dataclasses import dataclass, field
from typing import List
from .base import *
from .empty import *


@dataclass(frozen=True, eq=True)
class ArrayType(Type):
    base: Type
    inner: Type
    sizes: List[int] = field(default_factory=list)

    def __hash__(self):
        return hash((self.base, self.inner, tuple(self.sizes)))

    def type(self,
             specialize_templates: bool = False,
             without_template: bool = False) -> str:
        return self.decl("",
                         specialize_templates=specialize_templates,
                         without_template=without_template)

    def decl(self,
             label: str,
             specialize_templates: bool = False,
             without_template: bool = False) -> str:
        size = ''.join(f'[{i}]' for i in self.sizes)
        base = self.base.type(specialize_templates=specialize_templates,without_template=without_template)
        if isinstance(self.inner, EmptyType):
            return f"{base} {label}{size}"
        else:
            inner = self.inner.decl(label,specialize_templates=specialize_templates,without_template=without_template)
            return f"{base} ({inner}){size}"

    def traverse(self, callback, depth):
        should_exit = callback(self, depth)
        if not should_exit:
            self.base.traverse(callback, depth + 1)
            self.inner.traverse(callback, depth + 1)

    @staticmethod
    def create(base: Type, count: int) -> "ArrayType":
        return ArrayType(base, EmptyType(), [count])


@dataclass(frozen=True, eq=True)
class PaddingArrayType(Type):
    """
        Type which is used for exporting symbols of raw data with padding.
        Should never be used by the typing system.
    """

    base: Type
    size: int
    padding: int

    def __hash__(self):
        return hash((self.base, self.size, self.padding))

    def type(self) -> str:
        assert False

    def dependencies(self) -> Set["Type"]:
        assert False

    def decl(self, label: str) -> str:
        padding_size = ""
        if self.padding > 0:
            padding_size = f" + {self.padding} /* padding */"
        return f"{self.base.type()} {label}[{self.size}{padding_size}]"

    @staticmethod
    def create(base: Type, size: int, padding: int) -> "PaddingArrayType":
        return PaddingArrayType(base, size, padding)

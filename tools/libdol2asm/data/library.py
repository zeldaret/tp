
from typing import Dict
from pathlib import Path
from dataclasses import dataclass, field
from .translation_unit import *

@dataclass
class Library:
    name: str
    translation_units: Dict[str, TranslationUnit] = field(
        default_factory=dict, repr=False)
    module_path: Path = None
    lib_path: Path = None
    inc_path: Path = None
    asm_path: Path = None
    mk_path: Path = None

    @property
    def libname(self):
        assert self.name
        return f"lib{self.name.split('/')[-1]}.a"

    @property
    def makefile_path(self):
        assert self.name
        return self.mk_path.joinpath(self.name)

    @property
    def source_path(self):
        if not self.name:
            return self.lib_path
        return self.lib_path.joinpath(self.name)

    @property
    def include_path(self):
        if not self.name:
            return self.inc_path
        return self.inc_path.joinpath(self.name)

    @property
    def asm_function_path(self):
        if not self.name:
            return self.asm_path
        return self.asm_path.joinpath(self.name)

    def add_translation_unit(self, tu: TranslationUnit):
        self.translation_units[tu.name] = tu

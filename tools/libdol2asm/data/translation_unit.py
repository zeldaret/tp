
from typing import Dict
from dataclasses import dataclass, field
from .section import *

@dataclass
class TranslationUnit:
    name: str  # without the .o extension
    sections: Dict[str, Section] = field(default_factory=dict, repr=False)
    generate: bool = True
    special: str = None


    @property
    def is_empty(self):
        if len(self.sections) == 0:
            return True
        symbol_count = sum([
            sum([
                symbol.has_body
                for symbol in section.symbols
            ])
            for section in self.sections.values()
        ])
        if symbol_count == 0:
            return True
        return False

    def source_path(self, library):
        return library.source_path.joinpath(f"{self.name}.cpp")

    def include_path(self, library):
        return library.include_path.joinpath(f"{self.name}.h")

    def object_path(self, library):
        return library.source_path.joinpath(f"{self.name}.o")

    def asm_function_path(self, library):
        return library.asm_function_path.joinpath(self.name)

    def add_section(self, section: Section):
        self.sections[section.name] = section
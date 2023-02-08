
from typing import Dict, List
from dataclasses import dataclass, field
from .library import *
from .section import ExecutableSection

@dataclass
class Module:
    index: int
    libraries: Dict[str, Library] = field(default_factory=dict, repr=False)
    executable_sections: List[ExecutableSection] = field(
        default_factory=list, repr=False)

    def add_library(self, library: Library):
        self.libraries[library.name] = library

    @property
    def base_library(self):
        return next(iter(self.libraries.values()))

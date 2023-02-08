
from dataclasses import dataclass, field

@dataclass
class Identifier:
    prefix: str
    addr: int
    name: str
    override_name: str = field(default=None, repr=False)
    is_name_safe: bool = field(default=False, repr=False)

    @property
    def label(self):
        if self.override_name:
            return self.override_name
        if self.name and self.is_name_safe:
            return self.name
        return "%s_%08X" % (self.prefix, self.addr)

    @property
    def reference(self):
        return self.label

    def __repr__(self):
        return f"Identifier({self.prefix}_{self.addr:08X},{self.name})"

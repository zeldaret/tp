
from dataclasses import dataclass, field

from .. import util
from ..builder import AsyncBuilder
from ..types import *
from .identifier import *

@dataclass(frozen=True)
class AddressRange:
    start: int
    end: int

    def __contains__(self, value):
        return value >= self.start and value < self.end

@dataclass
class ReferenceCount:
    total: int = 0
    static: int = 0
    extern: int = 0
    rel: int = 0

    def add_reference(self, referencee, referencer, count):
        self.total += count
        if referencer:
            if referencee._module != referencer._module:
                self.rel += count
            elif (referencee._library == referencer._library and
                  referencee._translation_unit == referencer._translation_unit):
                self.static += count
            else:
                self.extern += count
        else:
            self.extern += count

    def make_static(self):
        self.total = 1
        self.static = 1
        self.extern = 0
        self.rel = 0


@dataclass(eq=False)
class Symbol:
    identifier: Identifier
    addr: int
    size: int
    padding: int = 0
    alignment: int = 0
    reference_count: ReferenceCount = field(default_factory=ReferenceCount)
    sda_hack_reference_count: ReferenceCount = field(
        default_factory=ReferenceCount)
    require_forward_reference: bool = False
    data_type: Type = None
    source: str = None
    force_section: str = None
    _module: str = None
    _library: str = None
    _translation_unit: str = None
    _section: str = None

    demangled_name: NamedType = None
    references: Set[int] = field(default_factory=set)
    is_reachable: bool = False

    def __hash__(self):
        return hash(self.addr)

    def __eq__(self, other):
        if not hasattr(self, 'addr'):
            return True
        return self.addr == other.addr and self.size == other.size

    @property
    def start(self):
        return self.addr

    @property
    def end(self):
        return self.addr + self.size

    @property
    def offset(self):
        return self.addr - self.section.addr

    @property
    def label(self):
        return self.identifier.label

    @property
    def is_static(self):
        return self.reference_count.static > 0 and self.reference_count.extern == 0 and self.reference_count.rel == 0

    @property
    def uses_class_template(self):
        return False

    def add_reference(self, referencer, count=1):
        self.reference_count.add_reference(self, referencer, count)

    def add_sda_hack(self, referencer, count=1):
        self.sda_hack_reference_count.add_reference(self, referencer, count)

    def valid_reference(self, addr):
        return addr == self.addr

    def cpp_reference(self, accessor, addr):
        if addr != self.addr:
            raise Dol2ZelException(
                f"invalid reference addr 0x{addr:08X} for {type(self).__name__}\n{self}")
        return f"&{self.identifier.label}"

    def asm_reference(self, addr):
        if addr != self.addr:
            return None
        return self.identifier.label

    def gather_references(self, context, valid_range):
        pass

    def types(self):
        return set()

    def set_mlts(self, module: int, library: str, translation_unit: str, section: str):
        self._module = module
        self._library = library
        self._translation_unit = translation_unit
        self._section = section

    async def export_section_header(self, builder: AsyncBuilder):
        if self._section == ".extab":
            await builder.write("#pragma section \"extab_\"")
        if self._section == ".extabindex":
            await builder.write("#pragma section \"extabindex_\"")
        elif self._section == ".ctors":
            if self.identifier.label == "__init_cpp_exceptions_reference":
                #await builder.write("#pragma section \".ctors$10\"")
                #await builder.write_nonewline("__declspec(section \".ctors$10\") ")
                await builder.write_nonewline("SECTION_CTORS10 ")
            elif self.identifier.label == "_ctors":
                #await builder.write("#pragma section \".ctors$15\"")
                #await builder.write_nonewline("__declspec(section \".ctors$15\") ")
                await builder.write_nonewline("SECTION_CTORS15 ")
        elif self._section == ".dtors":
            if self.identifier.label == "__destroy_global_chain_reference":
                #await builder.write("#pragma section \".dtors$10\"")
                #await builder.write_nonewline("__declspec(section \".dtors$10\") ")
                await builder.write_nonewline("SECTION_DTORS10 ")
            elif self.identifier.label == "__fini_cpp_exceptions_reference":
                #await builder.write("#pragma section \".dtors$15\"")
                #await builder.write_nonewline("__declspec(section \".dtors$15\") ")
                await builder.write_nonewline("SECTION_DTORS15 ")
            elif self.identifier.label == "__dtors_null_terminator":
                #await builder.write("#pragma section \".dtors$15\"")
                #await builder.write_nonewline("__declspec(section \".dtors$15\") ")
                await builder.write_nonewline("SECTION_DTORS15 ")
        elif self.force_section:
            if self.force_section == '.bss':
                await builder.write_nonewline("SECTION_BSS ")
            else:
                assert False
        else:
            await builder.write_nonewline("extern \"C\" ")

    async def export_section(self, builder: AsyncBuilder):
        section = ""

        if self._section == ".data":
            section = "SECTION_DATA "
        elif self._section == ".sdata":
            section = "SECTION_SDATA "
        elif self._section == ".sdata2":
            section = "SECTION_SDATA2 "
        # elif self._section == ".bss":
        #    section = "SECTION_BSS "
        # elif self._section == ".sbss":
        #    section = "SECTION_SBSS "
        elif self._section == ".sbss2":
            section = "SECTION_SBSS2 "
        elif self._section == ".init":
            section = "SECTION_INIT "
        elif self._section == ".rodata":
            section = "SECTION_RODATA "
        elif self._section == ".extab":
            await builder.write_nonewline("SECTION_EXTAB ")
        elif self._section == ".extabindex":
            await builder.write_nonewline("SECTION_EXTABINDEX ")
        elif self._section == ".ctors":
            if self.identifier.label == "__init_cpp_exceptions_reference":
                #section = "__declspec(section \".ctors$10\") "
                section = "SECTION_CTORS10 "
            elif self.identifier.label == "_ctors":
                #section = "__declspec(section \".ctors$15\") "
                section = "SECTION_CTORS15 "
        elif self._section == ".dtors":
            if self.identifier.label == "__destroy_global_chain_reference":
                #section = "__declspec(section \".dtors$10\") "
                section = "SECTION_DTORS10 "
            elif self.identifier.label == "__fini_cpp_exceptions_reference":
                #section = "__declspec(section \".dtors$15\") "
                section = "SECTION_DTORS15 "
            elif self.identifier.label == "__dtors_null_terminator":
                #section = "__declspec(section \".dtors$15\") "
                section = "SECTION_DTORS15 "
        await builder.write_nonewline(section)

    async def export_extern(self, builder: AsyncBuilder):
        await builder.write_nonewline(f"extern ")

    async def export_static(self, builder: AsyncBuilder):
        await builder.write_nonewline(f"static ")

    async def export_readonly(self, builder: AsyncBuilder): 
        if self._section == ".rodata":
            await builder.write_nonewline(f"const ")
        elif self._section == ".extab":
            await builder.write_nonewline(f"const ")
        elif self._section == ".extabindex":
            await builder.write_nonewline(f"const ")
        elif self._section == ".ctors":
            await builder.write_nonewline(f"const ")
        elif self._section == ".dtors":
            await builder.write_nonewline(f"const ")

    async def export_declaration_head(self, builder: AsyncBuilder):
        assert False

    async def export_declaration_body(self, builder: AsyncBuilder):
        assert False

    async def export_declaration(self, exporter, builder: AsyncBuilder):
        await self.export_declaration_head(exporter, builder)
        await self.export_declaration_body(exporter, builder)

    async def export_u8_data(self, builder: AsyncBuilder, data: bytearray):
        for chunk in util.chunks(data, 16):
            line = ", ".join([f"0x{x:02X}" for x in chunk])
            await builder.write(f"\t{line},")

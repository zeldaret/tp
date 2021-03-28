from dataclasses import dataclass, field
from typing import List

from ..builder import AsyncBuilder
from .. import util
from ..types import *
from .base import *
from .identifier import *

def string_to_cstr(data):
    return "".join(data)


def escape_char(v):
    if v == "\n":
        return "\\n"
    elif v == "\t":
        return "\\t"
    elif v == "\v":
        return "\\v"
    elif v == "\b":
        return "\\b"
    elif v == "\r":
        return "\\r"
    elif v == "\f":
        return "\\f"
    elif v == "\a":
        return "\\a"
    elif v == "\\":
        return "\\\\"
    elif v == "\"":
        return "\\\""
    elif ord(v) < 32:
        return "\"\"\\x%02X\"\"" % ord(v)
    else:
        return v


def escape_char_hard(v):
    return "\"\"\\x%02X\"\"" % v


def escape_string(data):
    return [escape_char(x) for x in data]


def escape_char_hex(v):
    if v == 0:
        return "\\0"
    return "\\x%02X" % v


def escape_full_string(data):
    return [escape_char_hex(x) for x in data]


@dataclass(eq=False)
class String(ArbitraryData):
    encoding: str = None
    decoded_string: str = None

    def array_type(self):
        return self.element_type()

    async def export_declaration(self, exporter, builder: AsyncBuilder):
        assert self.padding == 0

        sjis = self.decoded_string.encode("shift_jisx0213")
        if 0x5c in sjis:
            await builder.write("// MWCC ignores mapping of some japanese characters using the ")
            await builder.write("// byte 0x5C (ASCII '\\'). This is why this string is hex-encoded.")
            data = escape_full_string(sjis)
        else:
            data = escape_string(self.decoded_string)

        await builder.write_nonewline("SECTION_DEAD ")
        if self.is_static:
            await self.export_static(builder)
        await builder.write_nonewline(self.array_type().decl(self.identifier.label))
        await String.export_string(builder, data)

    @staticmethod
    async def export_string(builder: AsyncBuilder, data: List[str]):
        if len(data) < 32:
            await builder.write(f" = \"{string_to_cstr(data)}\";")
        else:
            await builder.write(f" = ")
            data_chunks = util.chunks(data, 48)

            lines = []
            for chunk in data_chunks:
                lines += [f"    \"{string_to_cstr(chunk)}\""]
            lines[-1] += ";"

            for line in lines:
                await builder.write(line)


@dataclass(eq=False)
class StringBase(ArbitraryData):
    strings: List[Symbol] = field(default_factory=list, repr=False)

    def valid_reference(self, addr):
        return addr >= self.start and addr < self.end

    def array_type(self):
        return self.element_type()

    @property
    def is_static(self):
        # having @stringBase0 as satatic would remove the forward reference to the lcf generated symbol,
        # this will not compile correctly. 
        return False


    def set_mlts(self, module: int, library: str, translation_unit: str, section: str):
        super().set_mlts(module, library, translation_unit, section)
        for string in self.strings:
            string.set_mlts(module, library, translation_unit, section)

    async def export_declaration(self, exporter, builder: AsyncBuilder):
        await builder.write("#pragma push")
        await builder.write("#pragma force_active on")
        await builder.write("#pragma section \".dead\"")
        for string in self.strings:
            # if the @stringBase0 is static (which it will almost always be), setup 
            # so that the sub-strings are static.
            if self.is_static:
                string.reference_count.make_static()
            await string.export_declaration(exporter, builder)

        if self.padding > 0:
            assert len(self.padding_data) == self.padding
            assert self.padding_data[-1] == 0
            data = escape_full_string(self.padding_data[:-1])
            await builder.write("/* @stringBase0 padding */")
            await builder.write_nonewline("SECTION_DEAD ")
            await builder.write_nonewline("static ")
            await builder.write_nonewline(self.array_type().decl(f"pad_{self.end:08X}"))
            await String.export_string(builder, data)
        await builder.write("#pragma pop")

    @staticmethod
    def create(symbol, strings, data, padding_data):
        return StringBase(
            Identifier("stringBase", symbol.addr, symbol.name),
            symbol.addr,
            symbol.size,
            data=data,
            data_type=PointerType(ConstType(CHAR)),
            padding=len(padding_data),
            padding_data=padding_data,
            strings=strings)


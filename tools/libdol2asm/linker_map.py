import os
import re
import rich

from dataclasses import dataclass, field
from typing import Optional, List, Tuple
from collections import defaultdict
from pathlib import Path

from . import settings
from .context import Context

@dataclass
class Symbol:
    """ Symbol from the linker map """
    addr: int
    size: int
    padding: int
    name: str
    lib: Optional[str] = None
    obj: Optional[str] = None
    is_function: bool = False
    source: str = None
    access: "disassembler.Access" = None
    first_padding: int = 0

    @property
    def start(self):
        return self.addr

    @property
    def end(self):
        return self.addr + self.size


@dataclass
class Section:
    """ Section from the linker map """
    name: str
    addr: int
    size: int
    cs: List[Tuple[int, int]] = field(default_factory=list)
    symbols: List[Symbol] = field(default_factory=list)
    objects: List[str] = field(default_factory=list)
    index: int = 0
    data: bytes = field(default=None, repr=False)

    @property
    def start(self):
        return self.addr

    @property
    def end(self):
        return self.addr + self.size

    def is_addr_code(self, addr):
        for segment in self.cs:
            if addr >= segment[0] and addr < segment[1]:
                return True
        return False


#
SECTION_NAME_ORDER = [
    ".text",
    ".ctors",
    ".dtors",
    ".rodata",
    ".data",
    ".bss",
]


def parse(context: Context, module_id: int, linker_map_path: Path, executable_sections, base_folder=True):
    """Read the linker map file to get symbols and section names."""

    sections = dict()
    lines = []

    # read linker map line-by-line
    with linker_map_path.open('r') as file:
        lines = file.readlines()

    # group linker map lines by what section they are in
    groups = defaultdict(list)
    section_name = None
    for text_line in lines:
        if "section layout" in text_line:
            section_name = text_line.split(" ")[0]
            groups[section_name] = []
        elif section_name:
            groups[section_name].append(text_line)

    # determine what section names are already known
    already_known_names = set()
    for section in executable_sections:
        if section.name:
            already_known_names.add(section.name)

    # get all the linker map sections which are not already known
    map_names = [x for x in groups.keys() if not x in already_known_names]

    # get the name for all sections which has size and are not already known (this will probably be an list of None's)
    sects_names = [
        x.name for x in executable_sections if not x.name in already_known_names and x.size > 0]

    # try to match the section names with those from the linker map, i.e., assign the section a name from the linker map.
    skip = 0
    for i, section in enumerate([x for x in executable_sections if not x.name in already_known_names and x.size > 0]):
        index = i + skip
        if index < len(map_names):
            if len(groups[map_names[index]]) == 0 and map_names[index] != ".bss":
                section.name = map_names[index + 1]
                skip += 1
            else:
                section.name = map_names[index]

    # sort and create linker map sections
    executable_sections.sort(key=lambda x: x.start)
    for i, section in enumerate(executable_sections):
        if section.size > 0:
            if not section.name:
                assert i > 1
                last_section = executable_sections[i - 1]
                name_index = SECTION_NAME_ORDER.index(last_section.name)
                section.name = SECTION_NAME_ORDER[name_index + 1]
                context.warning(f"section name could not be determine using the map file, using the next name instead '{section.name}'")
                assert False  # TODO

            sections[section.name] = Section(
                section.name, section.start, section.size, section.code_segments)
            sections[section.name].first_padding = section.first_padding + section.offset_padding
            sections[section.name].data = section.data
            sections[section.name].index = i
            sections[section.name].alignment = section.alignment

    # for each section, go through all the lines and try to find sysmbols
    for section_name, lines in groups.items():
        for text_line in lines:
            line = re.sub(r'( \(entry of [^)]*\))', "", text_line)
            data = [x.strip() for x in line.strip().split(" ")]
            data = [x for x in data if len(x) > 0]

            # not symbols
            if len(data) < 6 or len(data) > 7:
                continue

            lib = None
            obj = None
            name = None
            size = int(data[1], base=16)
            addr = int(data[2], base=16)
            if len(data) == 6:
                name = data[4].split("\\")[-1]
                obj = data[5]
            elif len(data) == 7:
                name = data[4]
                lib = data[5].split("\\")[-1]
                obj = data[6]

            # group libraries togather (e.g. JSystem)
            if lib:
                for k, v in settings.LIBRARY_LUT:
                    if lib.startswith(k):
                        lib = v + lib
                        break

            if obj:
                # move translation units into files (e.g. d_a_XXX -> d/a/d_a_XXX)
                if base_folder:
                    if not lib:
                        for k, v in settings.FOLDERS:
                            if obj.startswith(k):
                                obj = v + obj
                                break
                if "\\" in obj:
                    obj = obj.replace("\\", "/")
                if "/" in obj:
                    # if the object file is a path only use the last 3 parts.
                    # choice was arbitrary, but it looks OK
                    obj = "/".join(obj.split("/")[-3:])

            # if we're the main.dol, then convert the address to relative address
            if module_id == 0:
                addr -= sections[section_name].addr

            # add the symbol
            symbol = Symbol(addr, size, 0, name, lib, obj)
            symbol.source = f"linker_map/'{linker_map_path}'/{addr:08X}"
            sections[section_name].symbols.append(symbol)

    # calculate a dictionary of addresses used by each section, this will later
    # be used to remove access labels generated by the analyze.py module
    addrs = defaultdict(lambda: dict())
    for k, v in sections.items():
        for symbol in v.symbols:
            addrs[k][symbol.addr] = symbol

    return sections, addrs

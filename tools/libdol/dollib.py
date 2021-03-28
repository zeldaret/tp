"""

Simple library for reading and parsing from .dol files.

"""

import struct

from dataclasses import dataclass, field
from typing import List


@dataclass
class Section:
    """ DOL Section """

    offset: int
    addr: int
    size: int
    type: str
    name: str
    data: bytearray = field(repr=False)

    @property
    def start(self):
        return self.addr

    @property
    def end(self):
        return self.addr + self.size

    def get_data(self, start, end):
        assert start >= self.start
        assert end <= self.end
        return self.data[start - self.start:end - self.start]

    def __contains__(self, addr):
        return addr >= self.start and addr < self.end


@dataclass
class DOL:
    """ DOL File """

    sections: List[Section]
    bss_address: int
    bss_size: int
    entry_point: int

    def get_named_section(self, name: str) -> Section:
        for section in self.sections:
            if section.name == name:
                return section
        return None


# TODO: Is this always the case?
NAMES_FOR_INDEX = {
    0: ".init",
    1: ".text",
    7: ".extab",
    8: ".extabindex",
    9: ".ctors",
    10: ".dtors",
    11: ".rodata",
    12: ".data",
    13: ".sdata",
    14: ".sdata2",
}


def read_section(index, offset, addr, size, buffer):
    """ Reading section from DOL file """

    type = "text"
    if index >= 7:
        type = "data"
    name = NAMES_FOR_INDEX[index] if index in NAMES_FOR_INDEX else None
    return Section(offset, addr, size, type, name, buffer[offset:][:size])


def read(buffer):
    """ 
    Parse DOL file from buffer
    """

    # TODO: Error checking
    offsets = struct.unpack('>' + 'I' * 18, buffer[0x00:][:0x48])
    addresses = struct.unpack('>' + 'I' * 18, buffer[0x48:][:0x48])
    sizes = struct.unpack('>' + 'I' * 18, buffer[0x90:][:0x48])
    bss_address, bss_size, entry_point = struct.unpack(
        '>III', buffer[0xD8:][:0x0C])

    sections = [
        read_section(i, offsets[i], addresses[i], sizes[i], buffer)
        for i in range(18)
        if offsets[i] > 0 and addresses[i] > 0 and sizes[i] > 0
    ]

    # The DOL format will align section to 32 bytes. We can get the "real" sizes of
    # each section by reading the _rom_copy_info and _bss_init_info symbols from
    # the .init section, as these are written by the linker before converting to DOL.
    # @game NOTE: for other games this may or may not work and the offsets would probably be different
    _rom_copy_info_offset = 0x80005544 - sections[0].addr + sections[0].offset
    _bss_init_info_offset = 0x800055c8 - sections[0].addr + sections[0].offset

    _rom_copy_info = dict()
    while True:
        src, dst, size = struct.unpack(
            '>III', buffer[_rom_copy_info_offset:][:12])
        if size == 0:
            break
        _rom_copy_info[dst] = size
        _rom_copy_info_offset += 12

    _bss_init_info = dict()
    while True:
        dst, size = struct.unpack('>II', buffer[_bss_init_info_offset:][:8])
        if size == 0:
            break
        _bss_init_info[dst] = size
        _bss_init_info_offset += 8

    # Calculate the .bss, .sbss, and .sbss2 sections
    temp_addr = bss_address
    for section in sections:
        if temp_addr < section.addr:
            size = section.addr - temp_addr
            sections += [Section(0, temp_addr, size, "bss", ".bss", None)]
            temp_addr = section.addr + section.size
            break

    for section in sections:
        if temp_addr < section.addr:
            size = section.addr - temp_addr
            sections += [Section(0, temp_addr, size, "bss", ".sbss", None)]
            temp_addr = section.addr + section.size
            break

    sections += [Section(0, temp_addr, bss_size -
                         (temp_addr - bss_address), "bss", ".sbss2", None)]
    sections.sort(key=lambda x: x.addr)

    for section in sections:
        if section.addr in _rom_copy_info:
            section.size = _rom_copy_info[section.addr]
        if section.addr in _bss_init_info:
            section.size = _bss_init_info[section.addr]

    return DOL(sections, bss_address, bss_size, entry_point)

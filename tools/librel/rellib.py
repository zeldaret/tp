import struct
import os
import yaz0
import io

from dataclasses import dataclass, field
from pathlib import Path
from typing import List, Optional

R_PPC_NONE = 0
R_PPC_ADDR32 = 1
R_PPC_ADDR24 = 2
R_PPC_ADDR16 = 3
R_PPC_ADDR16_LO = 4
R_PPC_ADDR16_HI = 5
R_PPC_ADDR16_HA = 6
R_PPC_ADDR14 = 7
R_PPC_REL24 = 10
R_PPC_REL14 = 11
R_DOLPHIN_NOP = 201
R_DOLPHIN_SECTION = 202
R_DOLPHIN_END = 203
R_DOLPHIN_MRKREF = 204

RELOCATION_NAMES = {
    R_PPC_NONE: "R_PPC_NONE",
    R_PPC_ADDR32: "R_PPC_ADDR32",
    R_PPC_ADDR24: "R_PPC_ADDR24",
    R_PPC_ADDR16: "R_PPC_ADDR16",
    R_PPC_ADDR16_LO: "R_PPC_ADDR16_LO",
    R_PPC_ADDR16_HI: "R_PPC_ADDR16_HI",
    R_PPC_ADDR16_HA: "R_PPC_ADDR16_HA",
    R_PPC_ADDR14: "R_PPC_ADDR14",
    R_PPC_REL24: "R_PPC_REL24",
    R_PPC_REL14: "R_PPC_REL14",
    R_DOLPHIN_NOP: "R_DOLPHIN_NOP",
    R_DOLPHIN_SECTION: "R_DOLPHIN_SECTION",
    R_DOLPHIN_END: "R_DOLPHIN_END",
    R_DOLPHIN_MRKREF: "R_DOLPHIN_MRKREF"
}


@dataclass
class Relocation:
    module: int  # reference module
    section: int  # reference section
    type: int
    offset: int
    addend: int  # reference offset
    parent: "Section" = field(default=None, repr=False)
    access: "disassembler.Access" = None
    relative_offset: int = None
    rel_offset: int = None

    @property
    def symbol_offset(self):
        return self.addend

    @property
    def replace_addr(self):
        return self.offset  # self.parent.offset +
    """
    @property
    def addr(self):
        shift = 0
        if (self.type == R_PPC_ADDR16 or self.type == R_PPC_ADDR16_LO or
                self.type == R_PPC_ADDR16_HI or self.type == R_PPC_ADDR16_HA):
            shift -= 2
        return self.offset + shift  # self.parent.offset
    """

@dataclass
class Section:
    index: int
    # Offset from the beginning of the REL to the section. If this is zero, the section is an uninitialized section (i.e. .bss)
    offset: int = 0
    unknown_flag: bool = False
    # Executable flag; if this is 1 the section is executable.
    executable_flag: bool = False
    # Length in bytes of the section. If this is zero, this entry is skipped.
    length: int = 0
    alignment: int = 0

    # not part of the section in the rel-file
    addr: int = None
    write_offset: int = None 
    name: Optional[str] = None
    data: Optional[bytes] = field(default=None, repr=False)
    relocations: List[Relocation] = field(default_factory=list, repr=False)


@dataclass
class REL:
    # Arbitrary identification number. Must be unique amongst all RELs used by a game. Must not be 0.
    index: int = 0
    next: int = 0 	# Pointer to next module, filled at runtime.
    prev: int = 0 	# Pointer to previous module, filled at runtime.
    numSections: int = 0  # Number of sections in the file.
    sectionInfoOffset: int = 0  # Offset to the start of the section table.
    # Offset to ASCII string containing name of module. May be NULL. Relative to start of REL file.
    nameOffset: int = 0
    nameSize: int = 0  # Size of the module name in bytes.
    version: int = 0  # Version number of the REL file format.
    bssSize: int = 0  # Size of the '.bss' section.
    relOffset: int = 0  # Offset to the relocation table.
    impOffset: int = 0  # Offset to imp table.
    impSize: int = 0  # Size of imp table in bytes.
    # Index into section table which prolog is relative to. Skip if this field is 0.
    prologSection: int = 0
    # Index into section table which epilog is relative to. Skip if this field is 0.
    epilogSection: int = 0
    # Index into section table which unresolved is relative to. Skip if this field is 0.
    unresolvedSection: int = 0
    bssSection: int = 0  # Index into section table which bss is relative to. Filled at runtime!
    prolog: int = 0  # Offset into specified section of the _prolog function.
    epilog: int = 0  # Offset into specified section of the _epilog function.
    # Offset into specified section of the _unresolved function.
    unresolved: int = 0
    # Version ≥ 2 only. Alignment constraint on all sections, expressed as power of 2.
    align: int = 0
    # Version ≥ 2 only. Alignment constraint on all '.bss' section, expressed as power of 2.
    bssAlign: int = 0
    # Version ≥ 3 only. If REL is linked with OSLinkFixed (instead of OSLink), the space after this address can be used for other purposes (like BSS).
    fixSize: int = 0

    # not part of the rel-file
    sections: List[Section] = field(default_factory=list, repr=False)
    relocations: List[Relocation] = field(default_factory=list, repr=False)
    path: Optional[Path] = field(default=None, repr=False)
    data: bytearray = field(default=None,repr=False)


def read_relocation(module, buffer):
    offset, type, section, addend = struct.unpack('>HBBI', buffer[:0x8])
    return Relocation(module, section, type, offset, addend)


def read_section(index, buffer):
    header = struct.unpack('>II', buffer[:0x8])
    flag0 = ((header[0] >> 1) & 1) != 0
    flag1 = ((header[0] >> 0) & 1) != 0

    offset = header[0] & ~3
    length = header[1]

    return Section(index, offset, flag0, flag1, length)


def read(buffer):
    # check if the rel is compressed
    if struct.unpack('>I', buffer[:4])[0] == 0x59617A30:
        buffer = yaz0.decompress(io.BytesIO(buffer))

    header_size = 0x40
    header = struct.unpack('>IIIIIIIIIIIIBBBBIII', buffer[:0x40])

    align = 0
    bssAlign = 0
    if header[7] >= 2:
        v2 = struct.unpack('>II', buffer[0x40:0x48])
        align = v2[0]
        bssAlign = v2[1]
        header_size += 0x8

    fixSize = 0
    if header[7] >= 3:
        v3 = struct.unpack('>I', buffer[0x48:0x4C])
        fixSize = v3[0]
        header_size += 0x4

    rel = REL(*header, align, bssAlign, fixSize)
    rel.data = buffer

    rel.sections = []
    section_buffer = buffer[rel.sectionInfoOffset:]
    for i in range(rel.numSections):
        section_offset = 0x8 * i
        section = read_section(i, section_buffer[section_offset:])
        rel.sections.append(section)

    addr = 0
    for section in rel.sections:
        section.offset_padding = 0
        section.first_padding = 0
        section.addr = addr
        section.alignment = align
        addr += section.length

    for section in reversed(rel.sections):
        if section.offset > 0 and section.length > 0:
            offset_aligned = (section.offset + 15) & ~15
            shift = offset_aligned - section.offset
            section.offset_padding += 0  # shift
            addr_aligned = (section.addr + 7) & ~7
            shift = addr_aligned - section.addr
            section.first_padding += 0  # shift
            break

    for section in rel.sections:
        if section.offset > 0 and section.length > 0:
            section.data = buffer[section.offset:][:section.length +
                                                   section.first_padding+section.offset_padding]

    for bss_section in rel.sections[1:]:
        if bss_section.data == None:
            bss_section.addr = (last_end + 7) & ~7
            bss_section.alignment = bssAlign
        last_end = bss_section.addr + bss_section.length

    rel.relocations = []
    imp_buffer = buffer[rel.impOffset:]
    for i in range(rel.impSize // 8):
        imp_offset = 0x8 * i
        module_id, rel_offset = struct.unpack(
            '>II', imp_buffer[imp_offset:][:0x8])

        section = None
        offset = 0
        while True:
            relocation = read_relocation(module_id, buffer[rel_offset:])
            rel_offset += 0x8

            if relocation.type == R_PPC_NONE:
                continue
            if relocation.type == R_DOLPHIN_NOP:
                # NOP is used to simulate have long offset values, this is because 
                # the offset field is limited to 2^16-1 values. Thus, any offsets 
                # above 2^16 will be divided into a NOP + original relocation type.
                offset += relocation.offset
                continue
            if relocation.type == R_DOLPHIN_SECTION:
                section = rel.sections[relocation.section]
                offset = 0
                continue

            assert section
            relocation.parent = section
            relocation.rel_offset = rel_offset - 0x8
            relocation.relative_offset = relocation.offset
            relocation.offset += offset
            offset = relocation.offset

            assert relocation.type != R_DOLPHIN_MRKREF
            if relocation.type == R_DOLPHIN_END:
                break

            section.relocations.append(relocation)
            rel.relocations.append(relocation)

    return rel

def write_header(file, rel):
    header = struct.pack(
        '>IIIIIIIIIIIIBBBBIII', 
        rel.index,
        rel.next,
        rel.prev,
        rel.numSections,
        rel.sectionInfoOffset,
        rel.nameOffset,
        rel.nameSize,
        rel.version,
        rel.bssSize,
        rel.relOffset,
        rel.impOffset,
        rel.impSize,
        rel.prologSection,
        rel.epilogSection,
        rel.unresolvedSection,
        rel.bssSection,
        rel.prolog,
        rel.epilog,
        rel.unresolved)
    file.write(header)

    if rel.version >= 2:
        header = struct.pack(
            '>II', 
            rel.align,
            rel.bssAlign)
        file.write(header)

    if rel.version >= 3:
        header = struct.pack(
            '>I', 
            rel.fixSize)
        file.write(header)

def write_section_header(file, section):
    assert section.offset & 3 == 0
    file.write(struct.pack('>II', 
        section.offset | ((section.unknown_flag & 1) << 1) | ((section.executable_flag & 1) << 0),
        section.length
    ))

def write_section_data(file, section):
    assert len(section.data) == section.length
    file.write(section.data)

def write_relocation(file, offset, type, section, addend):
    assert (offset & 0xFFFF) == offset
    assert (type & 0xFF) == type
    assert (section & 0xFF) == section
    assert (addend & 0xFFFFFFFF) == addend
    file.write(struct.pack('>HBBI', 
        offset,
        type,
        section,
        addend
    ))
  
def write_imp(file, module, offset):
    assert (module & 0xFFFFFFFF) == module
    assert (offset & 0xFFFFFFFF) == offset
    file.write(struct.pack('>II', 
        module,
        offset
    ))   

RELOCATION_SIZES = {
    R_PPC_ADDR32: (0, 4),
    R_PPC_ADDR24: (1, 4),
    R_PPC_ADDR16: (0, 2),
    R_PPC_ADDR16_LO: (0, 2),
    R_PPC_ADDR16_HI: (0, 2),
    R_PPC_ADDR16_HA: (0, 2),
    R_PPC_REL24: (1, 4),
    R_PPC_REL14: (2, 4),
}

class RELRelocationException(Exception):
    ...

def apply_relocation(kind: int, module: int,
                     data: bytearray, data_offset: int,
                     P: int, S: int, A: int) -> bool:
    """

    P = relocation position - the location where the relocation will occur (data[P - data_offset])
    S = symbol address - the address of the symbol we are referencing
    A = append - the value added to the symbol address 

    """

    offset, size = RELOCATION_SIZES.get(kind, (0, 0))
    I = P - data_offset

    if size == 4:
        if len(data[I:]) < 4:
            raise RELRelocationException(f"data length too short. length >= {I+4} (current length: {len(data)})")
        X = struct.unpack('>I', data[I:][:4])[0]
    elif size == 2:
        if len(data[I:]) < 2:
            raise RELRelocationException(f"data length too short. length >= {I+2} (current length: {len(data)})")
        X = struct.unpack('>H', data[I:][:2])[0]
    else:
        return False

    if kind == R_PPC_ADDR32:
        R = (S + A) & 0xFFFFFFFF
        Y = struct.pack('>I', R)
    elif kind == R_PPC_ADDR16 or kind == R_PPC_ADDR16_LO:
        R = (S + A) & 0xFFFF
        Y = struct.pack('>H', R)
    elif kind == R_PPC_ADDR16_HI:
        R = ((S + A) >> 16) & 0xFFFF
        Y = struct.pack('>H', R)     
    elif kind == R_PPC_ADDR16_HA:
        R = (S + A) & 0xFFFFFFFF
        H = (R >> 16) + (1 if (R & 0x8000) else 0)
        Y = struct.pack('>H', H & 0xFFFF)     
    elif kind == R_PPC_REL24:
        R = (S + A - P) & 0xFFFFFFFF
        TM = (0b111111 << 26) & 0xFFFFFFFF
        BM = (0b11)

        assert (R & BM) == 0
        assert (R & TM) == 0 or (R & TM) == TM
        M = TM | BM
        Y = struct.pack(">I", (X & M) | (R & ~M))
    elif kind == R_PPC_REL14:
        R = (S + A - P) & 0xFFFFFFFF
        TM = 0b1111111111111111 << 16
        BM = 0b11
        assert (R & BM) == 0
        assert (R & TM) == 0 or (R & TM) == TM
        M = TM | BM
        Y = struct.pack(">I", (X & M) | (R & ~M))
    else:
        return False
    
    data[I:I+size] = Y
    return True 
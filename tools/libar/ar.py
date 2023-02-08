"""

Simple Library for reading and parsing archive files generate by the linker.

"""

import struct

from typing import List, Tuple
from dataclasses import dataclass, field

#
# Source: 'https://en.wikipedia.org/wiki/Ar_(Unix)'
#


def _utf8(s):
    result = s.decode('utf-8')
    if not result:
        return ""
    return result


@dataclass
class Header:
    """ Header """

    signature: int = 0

    def read(self, file):
        self.signature = struct.unpack(">Q", file.read(8))[0]


@dataclass
class FileBlock:
    """ File Block """

    name: str = None
    mtime: int = 0
    uid: int = 0
    gid: int = 0
    perms: int = 0
    size: int = 0
    data: bytes = None

    def read(self, file):
        buffer = file.read(60)
        if len(buffer) != 60:
            return False

        name, mtime, uid, gid, perms, size, magic = (
            struct.unpack('16s12s6s6s8s10s2s', buffer))
        self.name = _utf8(name)
        self.mtime = int(mtime, 10) if len(mtime.strip()) > 0 else 0
        self.uid = int(uid, 10) if len(uid.strip()) > 0 else 0
        self.gid = int(gid, 10) if len(gid.strip()) > 0 else 0
        self.perms = int(perms, 8) if len(perms.strip()) > 0 else 0
        self.size = int(size, 10)
        self.data = file.read(self.size)
        if self.size % 2 != 0:
            file.read(1)
        return len(self.data) == self.size


@dataclass
class AR:
    """ Archive with files """

    files: List[Tuple[str, bytearray]] = field(default_factory=list)


def read(path) -> AR:
    """
    Read and parse archive files generate by linkers.
    """

    archive = AR()
    with open(path, 'rb') as file:
        header = Header()
        header.read(file)
        if header.signature != 0x213C617263683E0A:
            raise ARException(
                f"invalid AR file signature: {header.signature:016X}")

        while True:
            block = FileBlock()
            if not block.read(file):
                break
            if block.name.strip() == "/":
                continue
            if block.name.strip() == "//":
                string_table = _utf8(block.data)
                continue

            # parse file name
            ss = block.name.split("/")
            name = ss[0]
            if len(ss[0]) == 0:
                str_index = ss[1].strip()
                assert len(str_index) > 0
                index = int(str_index)
                name = string_table[index:].split("/")[0]

            name = name.lstrip().rstrip(' ')
            if name == "" or name == "/":
                continue

            archive.files.append((name, block.data))

    return archive

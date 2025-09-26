import os
import struct
from typing import BinaryIO

def skip_bytes(binary_file:BinaryIO, byte_count:int) -> None:
    binary_file.seek(byte_count, os.SEEK_CUR)

def read_s8(binary_file: BinaryIO)-> int:
    chunk = binary_file.read(1)
    if len(chunk) < 1:
        raise EOFError()
    return struct.unpack(">b", chunk)[0]

def read_s16(binary_file: BinaryIO) -> int:
    chunk = binary_file.read(2)
    if len(chunk) < 2:
        raise EOFError()
    return struct.unpack(">h", chunk)[0]

def read_s32(binary_file: BinaryIO) -> int:
    chunk = binary_file.read(4)
    if len(chunk) < 4:
        raise EOFError()
    return struct.unpack(">i", chunk)[0]

def read_u8(binary_file: BinaryIO) -> int:
    chunk = binary_file.read(1)
    if len(chunk) < 1:
        raise EOFError()
    return struct.unpack(">B", chunk)[0]

def read_u16(binary_file: BinaryIO) -> int:
    chunk = binary_file.read(2)
    if len(chunk) < 2:
        raise EOFError()
    return struct.unpack(">H", chunk)[0]

def read_u32(binary_file: BinaryIO) -> int:
    chunk = binary_file.read(4)
    if len(chunk) < 4:
        raise EOFError()
    return struct.unpack(">I", chunk)[0]

def read_f32(binary_file: BinaryIO) -> int:
    chunk = binary_file.read(4)
    if len(chunk) < 4:
        raise EOFError()
    return struct.unpack(">f", chunk)[0]

def read_bytes_until_null(binary_file: BinaryIO) -> bytes:
    begin = binary_file.tell()
    while True:
        b = binary_file.read(1)
        if len(b) == 0:
            raise EOFError()
        if b[0] == 0:
            break

    str_length = binary_file.tell() - begin - 1
    binary_file.seek(begin)
    return binary_file.read(str_length)

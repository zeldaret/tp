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
  str_length = 0
  while True:
    char = binary_file.read(1)
    if char == b"\0":
      break
    else:
      str_length += 1
  
  binary_file.seek(-(str_length+1), os.SEEK_CUR)
  string = binary_file.read(str_length)
  
  return string

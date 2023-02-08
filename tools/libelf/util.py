import struct
import io
import sys
from typing import Optional, IO, List

def read_u8(f: IO) -> int:
    return struct.unpack("B", f.read(1))[0]

def read_u8_array(f: IO, count: int) -> List[int]:
    return struct.unpack("B"*count, f.read(count * 1))

def read_u16(f: IO) -> int:
    return struct.unpack(">H", f.read(2))[0]

def read_s16(f: IO) -> int:
    return struct.unpack(">h", f.read(2))[0]

def read_u32(f: IO) -> int:
    return struct.unpack(">I", f.read(4))[0]

def read_s32(f: IO) -> int:
    return struct.unpack(">i", f.read(4))[0]

def read_u64(f: IO) -> int:
    return struct.unpack(">Q", f.read(8))[0]

def write_u8(f: IO, i: int):
    f.write(struct.pack("B", i))

def write_u8_array(f: IO, i: List[int]):
    for x in i:
        f.write(struct.pack("B", x))

def write_u16(f: IO, i: int):
    f.write(struct.pack(">H", i))

def write_u32(f: IO, i: int):
    f.write(struct.pack(">I", i))

def write_u64(f: IO, i: int):
    f.write(struct.pack(">Q", i))

def file_align(f: IO, i: int):
    x = f.tell()
    y = (x + i - 1) & ~(i - 1)
    if x != y:
        f.seek(y, os.SEEK_SET)

def parse_null_data(data: bytes) -> Optional[bytes]:
    result = bytearray()
    for b in data:
        if b == 0:
            return bytes(result)
        else:
            result.append(b)
    return None

def parse_null_string(data: bytes) -> Optional[str]:
    result = parse_null_data(data)
    if result != None:
        result = result.decode("ascii")
    return result

def fail(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)
    sys.exit(1)
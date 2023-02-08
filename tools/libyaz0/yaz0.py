import ctypes
import struct

_yaz0lib = ctypes.cdll.LoadLibrary("build/yaz0.so")

if _yaz0lib == None:
    print("Error: build/yaz0.so failed to load!")

def decompress(data):
    header = data[0:4]
    if header != bytearray("Yaz0","ascii"):
        return None
    decompressedSize = struct.unpack(">I",data[4:8])[0]
    compressedDataBuffer = ctypes.c_buffer(bytes(data[16:]))
    decompressedDataBuffer = ctypes.c_buffer(bytes(decompressedSize))
    decode = _yaz0lib.yaz0_decode
    decode.argtypes = [ctypes.c_char_p,ctypes.c_char_p,ctypes.c_int]
    decode.restype = ctypes.c_int
    decode(compressedDataBuffer,decompressedDataBuffer,decompressedSize)
    return bytearray(decompressedDataBuffer)[:-1]

def compress(data):
    decompresseddDataBuffer = ctypes.c_buffer(data)
    compressedDataBuffer = ctypes.c_buffer(bytes(len(data)*2))
    encode = _yaz0lib.yaz0_encode
    encode.argtypes = [ctypes.c_char_p,ctypes.c_char_p,ctypes.c_int]
    encode.restype = ctypes.c_int
    size = encode(decompresseddDataBuffer,compressedDataBuffer,len(data))

    header_padding = bytearray(8)
    ident = bytearray("Yaz0","ascii")
    sizeInt = struct.pack(">I",len(data))
    return ident + sizeInt + header_padding + bytearray(compressedDataBuffer)[:size]

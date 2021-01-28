#!/usr/bin/env python3
# PYTHON_ARGCOMPLETE_OK
import argparse
import sys
import os
import struct
import shlex
from pathlib import Path, PurePath, PureWindowsPath
from typing import (
    Any,
    Dict,
    List,
    Match,
    NamedTuple,
    NoReturn,
    Optional,
    Set,
    Tuple,
    Union,
    Callable,
    Pattern,
)


try:
    import argcomplete  # type: ignore
except ModuleNotFoundError:
    argcomplete = None

parser = argparse.ArgumentParser(description="Extract section data and generate C++ code (arrays).")

parser.add_argument(
    "--section",
    dest="section",
   type=str,
    metavar="SECTION",
    help="SECTION to extract data from.",
    required=True
)

parser.add_argument(
    "--file-offset",
    dest="file_offset",
   type=lambda x: int(x,0),
    metavar="OFFSET",
    help="OFFSET in the baserom for the SECTION."
)

parser.add_argument(
    "--object",
    dest="object_name",
   type=str,
    metavar="OBJECT",
    help="OBJECT filename to extract data from. (e.g. JKRSolidHeap.o)",
    required=True
)

parser.add_argument(
    "--baserom",
    dest="baserom",
   type=str,
    metavar="DOL",
    help="baserom.dol path",
    default="baserom.dol"
)

parser.add_argument(
    "--string",
    dest="as_string",
    action="store_true",
    help="Print arrays as strings"
)


#
#
#

def _itersplit(l, splitters):
    current = []
    for item in l:
        if item in splitters:
            yield current
            current = []
        else:
            current.append(item)
    yield current

def magicsplit(l, *splitters):
    return [subl for subl in _itersplit(l, splitters) ]

def str_encoding(data):
    try:
        data.decode("utf-8")
        return "utf-8"
    except:
        pass 

    try:
        data.decode("shift_jisx0213")
        return "shift-jis"
    except:
        pass

    return None, None

def raw_string(data):
    assert data[-1] == 0
    return str(data[:-1])[2:-1].replace("\"", "\\\"")

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
    elif ord(v) < 32 and ord(v) > 127:
        return "\\x" + hex(v)[2:].upper().rjust(2, '0')
    else:
        return v        
        
def escape(v):
    return "".join([ escape_char(x) for x in list(v) ])


class Symbol:
    def __init__(self, name, addr, size):
        self.name = name
        self.addr = addr
        self.size = size
        self.padding = 0

    def __str__(self):
        return "   %s %s %s+%s %s" % (self.name.ljust(40, ' '), hex(self.addr), hex(self.addr + self.size), hex(self.padding), hex(self.size))

class ObjectFile:
    def __init__(self, path):
        self.path = path
        self.symbols = []
        self.start = 0
        self.end = 0
        self.mk = False

    def addSymbol(self, name, str_addr, str_size):
        addr = int(str_addr, base=16)
        size = int(str_size, base=16)

        symbol =  Symbol(name, addr, size)
        if not self.symbols:
            self.start = symbol.addr
        else:
            last_symbol = self.symbols[-1]
            last_addr = last_symbol.addr + last_symbol.size
            if last_addr != addr:
                last_symbol.padding += addr - last_addr
        self.symbols += [ symbol ]

    def setEnd(self, end):
        self.end = end
        last_symbol = self.symbols[-1]
        last_symbol.padding = self.end - (last_symbol.addr + last_symbol.size)

def find_symbols():
    file = open('frameworkF.map', 'r') 
    lines = file.readlines() 
    
    in_section = False
    last_obj = None
    for line in lines: 
        data = [ x.strip() for x in line.strip().split(" ") ]
        data = [ x for x in data if len(x) > 0 ]

        if len(data) == 3:
            in_section = False
            if data[0] == section:
                in_section = True
            continue

        if not in_section:
            continue
        if len(data) < 6 or len(data) > 7:
            continue

        # get object filename
        obj = data[5]
        if len(data) > 6:
            obj = data[6]

        # remove path from object filename
        obj = obj.split("\\")[-1]
        if last_obj != obj:  
            assert obj not in object_map
            object_map[obj] = ObjectFile(obj)
            last_obj = obj

        # add symbol
        size = data[1]
        addr = data[2]
        name = data[4]
        object_map[obj].addSymbol(name, addr, size)

    keys = list(object_map.keys())
    for i,_ in enumerate(keys[:-1]):
        obj = object_map[keys[i]]
        next_obj = object_map[keys[i + 1]]
        obj.setEnd(next_obj.start)

    # total size of rodata must be aligned to 0x20
    obj = object_map[keys[-1]]
    last_symbol = obj.symbols[-1]
    last_addr = last_symbol.addr + last_symbol.size
    last_symbol.padding = ((last_addr + 31) & ~31) - last_addr
    file.close()
        
def output_cpp():
    if not object_name in object_map:
        print("error: %s object file not found!" % object_name)
        sys.exit(1)

    br = baserom.open("rb")
    br.seek(0, os.SEEK_END)
    br_size = br.tell()
    br.seek(0, os.SEEK_SET)

    obj = object_map[object_name]
    for symbol in obj.symbols:

        label = "lbl_%s" % (hex(symbol.addr).upper()[2:])

        symbol_file_offset = symbol.addr - file_offset
        symbol_file_size = symbol.size + symbol.padding

        if symbol_file_offset + symbol_file_size > br_size:
            print("error: reading outside baserom file. (%i, %i)" % (symbol_file_offset + symbol_file_size, br_size))

        br.seek(symbol_file_offset, os.SEEK_SET)
        data = br.read(symbol.size)
        padding = br.read(symbol.padding)


        value = "???"
        if len(data) == 4:
            u32_data = struct.unpack('>I', data)[0]
            s32_data = struct.unpack('>i', data)[0]
            float_data = struct.unpack('>f', data)[0]
            
            if s32_data == 0 or (s32_data >= -4096 and s32_data <= 4096):
                value = str(s32_data)
            elif u32_data == 0 or u32_data <= 4096:
                value = str(u32_data)
            elif int(float_data) == float_data and float_data >= -4096 and float_data <= 4096:
                value = "%sf (%s)" % (str(float_data), hex(u32_data))
        elif len(data) == 8:
            u64_data = struct.unpack('>Q', data)[0]
            s64_data = struct.unpack('>q', data)[0]
            double_data = struct.unpack('>d', data)[0]

            if s64_data == 0 or (s64_data >= -4096 and s64_data <= 4096):
                value = str(s64_data)
            elif u64_data == 0 or u64_data <= 4096:
                value = str(u64_data)
            elif int(double_data) == double_data and double_data >= -4096 and double_data <= 4096:
                value = "%s (%s)" % (str(double_data), hex(u64_data))

        print("// %s %s %s = %s" % (label, obj.path, symbol.name, value))
        if args.as_string:
            offset = 0
            str_segments = [ x + [0] for x in magicsplit(data, 0) ]
            for segment in str_segments[:-1]:
                str_data = bytes(segment)
                encoding = str_encoding(str_data)

                str_label = "lbl_%s" % (hex(symbol.addr + offset).upper()[2:])
                if encoding == "shift-jis" :
                    print("const char* %s = \"%s\"; /* shift-jis encoded (TODO) */" % (str_label, raw_string(str_data))) 
                elif encoding == "utf-8" :
                    print("const char* %s = \"%s\";" % (str_label, raw_string(str_data)))
                else:
                    print("const char* %s = \"%s\"; /* undecodable string */" % (str_label, raw_string(str_data)))  
                offset += len(str_data)
                
            if padding:
                padding_label = "lbl_%s" % (hex(symbol.addr + symbol.size).upper()[2:])
                print("const char* %s = \"%s\"; /* padding */" % (padding_label, raw_string(padding)))
        else:  
            cpp_array = ",".join([hex(x) for x in list(data)])
            print("static const u8 %s[%i] = { %s };" % (label, len(data), cpp_array))

            if padding:
                padding_label = "lbl_%s" % (hex(symbol.addr + symbol.size).upper()[2:])
                cpp_array = ",".join([hex(x) for x in list(padding)])
                print("static const u8 %s[%i] = { %s }; /* padding */" % (padding_label, len(padding), cpp_array))

    br.close()

#
#
#

try:
    args = parser.parse_args()
except:
    parser.print_help()
    sys.exit(0)

section = args.section
object_name = args.object_name
file_offset: Optional[int] = args.file_offset
baserom = Path(args.baserom)

file_offsets = {
    ".rodata": 0x80003000,
    ".sdata": 0x800802A0,
    ".sdata2": 0x800811A0,
}

if not file_offset:
    if not section in file_offsets:
        print("error: missing --file-offset")
        sys.exit(1)
    else:
        file_offset = file_offsets[section]

if not baserom.exists():
    print("error: baserom '%s' not found!" % args.baserom)
    sys.exit(1)

object_map: Dict[str,ObjectFile] = {}

find_symbols()
output_cpp()

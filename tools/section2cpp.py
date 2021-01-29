#!/usr/bin/env python3
# PYTHON_ARGCOMPLETE_OK

"""

This script will extract literal and strings data 
from secific section located in the baserom.dol. 
Useful when trying to match .rodata and .sdata2 
in translation units.

usage: 
./tools/section2cpp.py --section .rodata --string --object JKRSolidHeap.o

"""

import argparse
import sys
import os
import struct
import shlex
from decimal import getcontext, Decimal
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
    import numpy
except:
    print("error: missing numpy")
    sys.exit(1)


try:
    import argcomplete  # type: ignore
except ModuleNotFoundError:
    argcomplete = None

parser = argparse.ArgumentParser(description="Extract section data and generate C++ code.")

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
    help="OBJECT filename to extract data from. (e.g. JKRSolidHeap.o)"
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

parser.add_argument(
    "--array",
    dest="as_array",
    action="store_true",
    help="Print everything as u8 arrays"
)

parser.add_argument(
    "--shift-jis",
    dest="shift_jis",
    action="store_true",
    help="Convert shift-jis to utf-8"
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
    if data[-1] != 0:
        return None

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

    return None

def encoding_char_list(encoding, data):
    if args.shift_jis and encoding == "shift-jis":
        try:
            return escape(data.decode("shift_jisx0213"))
        except:
            pass
    return [ str(bytes([x]))[2:-1].replace("\"", "\\\"") for x in data ]    

def raw_string(data):
    return "".join(data)

def raw_array(data):
    return ",".join([hex(x) for x in list(data)])

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

def bytes2float32(data):
    if len(data) < 4:
        return None
    result = numpy.frombuffer(data[0:4][::-1], dtype='float32')
    if result:
        return result[0]
    else:
        return None

def bytes2float64(data):
    if len(data) < 8:
        return None
    result = numpy.frombuffer(data[0:8][::-1], dtype='float64')
    if result:
        return result[0]
    else:
        return None

def is_nice_float32(f):
    try:
        if int(f*1000) == f*1000:
            return True
        if int(f*100) == f*100:
            return True
        if int(f*10) == f*10:
            return True
        if int(f) == f:
            return True
    except:
        return False
    return False

def is_nice_float64(f):
    try:
        if int(f*1000) == f*1000:
            return True
        if int(f*100) == f*100:
            return True
        if int(f*10) == f*10:
            return True
        if int(f) == f:
            return True
    except:
        return False
    return False

float32_exact: Dict[numpy.float32, Tuple[int,int]] = {}
float64_exact: Dict[numpy.float64, Tuple[int,int]] = {}

getcontext().prec = 64
for i in range(1,32):
    for j in range(1,32):
        if i%j == 0:
            continue
        d = Decimal(i)/Decimal(j)
        f = numpy.float32(d)
        if str(f) != str(d):
            if not f in float32_exact:
                float32_exact[f] = (i,j)

for i in range(1,32):
    for j in range(1,32):
        if i%j == 0:
            continue
        d = Decimal(i)/Decimal(j)
        f = numpy.float64(d)
        if str(f) != str(d):
            if not f in float64_exact:
                float64_exact[f] = (i,j)

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

def chunks(lst, n):
    for i in range(0, len(lst), n):
        yield lst[i:i + n]

def data_as_string(data):
    return ", ".join([ "0x" + hex(x)[2:].rjust(2, '0') for x in data ])


class Literal:
    def __init__(self, name, type, value, comment=None):
        self.name = name
        self.type = type
        self.value = value
        self.comment = comment  

    def format(self):
        return str(self.value)

    def lines(self):
        line = "static const %s %s = %s;" % (self.type, self.name, self.format())
        if self.comment:
            line = line.ljust(90, ' ') + " // " +  self.comment
        return [ line ]

    def __str__(self):
        return "\n".join(self.lines())

class Label(Literal):
    def __init__(self, name):
        super().__init__(name, "", None, None)

    def lines(self):
        return [ "", "", "// " + self.name ]
    
class Float32Literal(Literal):
    def __init__(self, name, value, comment=None):
        super().__init__(name, "float", value, comment)

    def format(self):
        return "%sf" % self.value

class Float64Literal(Literal):
    def __init__(self, name, value, comment=None):
        super().__init__(name, "double", value, comment)

class FractionFloat32Literal(Literal):
    def __init__(self, name, value, comment=None):
        super().__init__(name, "float", value, comment)

    def format(self):
        return "%i.0f / %i.0f" % self.value

class FractionFloat64Literal(Literal):
    def __init__(self, name, value, comment=None):
        super().__init__(name, "double", value, comment)

    def format(self):
        return "%i.0 / %i.0" % self.value

class U32Literal(Literal):
    def __init__(self, name, value, comment=None):
        super().__init__(name, "u32", value, comment)

class S32Literal(Literal):
    def __init__(self, name, value, comment=None):
        super().__init__(name, "s32", value, comment)

class S64Literal(Literal):
    def __init__(self, name, value, comment=None):
        super().__init__(name, "s64", value, comment)

class U64Literal(Literal):
    def __init__(self, name, value, comment=None):
        super().__init__(name, "u64", value, comment)

class ArrayLiteral(Literal):
    def __init__(self, name, value, comment=None):
        super().__init__(name, "u8", value, comment)

    def lines(self):
        one_line = "static const %s %s[%i] = { %s };" % (self.type, self.name, len(self.value), data_as_string(self.value))

        lines = []
        if len(one_line) < 90:
            lines += [ one_line ]
        else:
            lines += [ "static const %s %s[%i] = {" % (self.type, self.name, len(self.value)) ]
            data_chunks = chunks(list(self.value), 16)
            for chunk in data_chunks:
                lines += [ "    " + data_as_string(chunk) ]
            lines += [ "};" ]

        if lines and self.comment:
            lines[0] = lines[0].ljust(90, ' ') + " // " +  self.comment 
        return lines

class StringLiteral(Literal):
    def __init__(self, name, encoding, value, comment=None):
        assert value[-1] == 0
        super().__init__(name, "char", value[:-1], comment)
        self.encoding = encoding

    def lines(self):
        char_list = encoding_char_list(self.encoding, self.value)
        one_line = "static const %s %s = \"%s\";" % (self.type, self.name, raw_string(char_list))

        lines = []
        if len(one_line) < 90:
            lines += [ one_line ]
        else:
            lines += [ "static const %s %s = " % (self.type, self.name) ]
            data_chunks = chunks(char_list, 16)
            for chunk in data_chunks:
                lines += [ "    \"%s\"" % raw_string(chunk) ]
            lines[-1] += ";"

        if lines and self.comment:
            lines[0] = lines[0].ljust(90, ' ') + " // " +  self.comment 
        return lines

def output_cpp():
    object_names = []
    if object_name:
        if not object_name in object_map:
            print("error: %s object file not found!" % object_name)
            sys.exit(1)
        object_names += [ object_name ]
    else:
        object_names = [*object_map.keys()]

    br = baserom.open("rb")
    br.seek(0, os.SEEK_END)
    br_size = br.tell()
    br.seek(0, os.SEEK_SET)

    literals = []
    for obj_name in object_names:
        literals += [ Label(obj_name) ]

        obj = object_map[obj_name]
        for symbol in obj.symbols:
            label = "lbl_%s" % (hex(symbol.addr).upper()[2:])

            symbol_file_offset = symbol.addr - file_offset
            symbol_file_size = symbol.size + symbol.padding

            if symbol_file_offset + symbol_file_size > br_size:
                print("error: reading outside baserom file. (%i, %i)" % (symbol_file_offset + symbol_file_size, br_size))

            br.seek(symbol_file_offset, os.SEEK_SET)
            data = br.read(symbol.size)
            padding = br.read(symbol.padding)

            if args.as_string:
                offset = 0
                str_segments = [ x for x in magicsplit(data, 0) ]
                for segment in str_segments[:-1]:
                    str_data = bytes(segment + [0])
                    encoding = str_encoding(str_data)

                    str_label = "lbl_%s" % (hex(symbol.addr + offset).upper()[2:])
                    if encoding == "shift-jis":
                        literals += [ StringLiteral(str_label, "shift-jis", str_data, "TODO: shift-jis strings in Metrowerks") ]
                    elif encoding == "utf-8":
                        literals += [ StringLiteral(str_label, "utf-8", str_data) ]
                    else:
                        literals += [ ArrayLiteral(str_label, str_data, "undecodable string") ]
                    offset += len(str_data)

                if padding:
                    padding_label = "lbl_%s" % (hex(symbol.addr + symbol.size).upper()[2:])
                    literals += [ StringLiteral(padding_label, None, padding, "padding") ]
                    padding = None
            elif args.as_array:
                literals += [ ArrayLiteral(label, data) ]
            else:
                lit = None
                if len(data) == 4:
                    u32_data = struct.unpack('>I', data)[0]
                    s32_data = struct.unpack('>i', data)[0]
                    float_data = bytes2float32(data)
                    
                    if s32_data == 0 or (s32_data >= -4096 and s32_data <= 4096):
                        lit =   S32Literal(label, s32_data) 
                    elif u32_data == 0 or (u32_data < 4096):
                        lit =   U32Literal(label, u32_data) 
                    elif float_data in float32_exact:
                        lit = FractionFloat32Literal(label, float32_exact[float_data], "%sf %s" % (float_data, hex(u32_data)))
                    elif is_nice_float32(float_data):
                        lit = Float32Literal(label, float_data, hex(u32_data)) 

                elif len(data) == 8:
                    u64_data = struct.unpack('>Q', data)[0]
                    s64_data = struct.unpack('>q', data)[0]
                    double_data = bytes2float64(data)

                    if u64_data == 0x4330000000000000:
                        lit = Float64Literal(label, double_data, "%s | u32 to float (compiler-generated)" % hex(u64_data)) 
                    elif u64_data == 0x4330000080000000:
                        lit = Float64Literal(label, double_data, "%s | s32 to float (compiler-generated)" % hex(u64_data)) 
                    elif s64_data == 0 or (s64_data >= -4096 and s64_data <= 4096):
                        lit =   S64Literal(label, s64_data) 
                    elif u64_data == 0 or (u64_data < 4096):
                        lit =   U64Literal(label, u64_data) 
                    elif double_data in float64_exact:
                        lit = FractionFloat64Literal(label, float64_exact[double_data], "%s %s" % (double_data, hex(u64_data)))
                    elif is_nice_float64(double_data):
                        lit = Float64Literal(label, double_data, hex(u64_data)) 

                if not lit:
                    lit = ArrayLiteral(label, data)
                literals += [ lit ]

            if padding:
                padding_label = "lbl_%s" % (hex(symbol.addr + symbol.size).upper()[2:])
                literals += [ ArrayLiteral(padding_label, data, "padding") ]
    
    for lit in literals:
        print(lit)

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

from typing import List, Optional
from pathlib import Path
from dataclasses import dataclass, field
import re

operator_func_re = re.compile(r'^__([a-z]+)')

types = {
    'i': 'int',
    'l': 'long',
    's': 'short',
    'c': 'char',
    'f': 'float',
    'd': 'double',
    'v': 'void',
    'x': 'long long',
    'b': 'bool',
    'e': 'varargs...',
}

# {'defctor', 'ops',}

special_funcs = {
    'eq': 'operator==',
    'as': 'operator=',
    'ne': 'operator!=',
    'dv': 'operator/',
    'pl': 'operator+',
    'mi': 'operator-',
    'ml': 'operator*',
    'adv': 'operator/=',
    'apl': 'operator+=',
    'ami': 'operator-=',
    'amu': 'operator*=',
    'lt': 'operator<',
    'gt': 'operator>',
    'cl': 'operator()',
    'dla': 'operator delete[]',
    'nwa': 'operator new[]',
    'dl': 'operator delete',
    'nw': 'operator new',
}


@dataclass
class Param:
    name: str = ''
    pointer_lvl: int = 0
    is_const: bool = False
    is_ref: bool = False
    is_unsigned: bool = False
    is_signed: bool = False

    def to_str(self) -> str:
        ret = ''
        if self.is_const:
            ret += 'const '
        if self.is_unsigned:
            ret += 'unsigned '
        ret += self.name
        for _ in range(self.pointer_lvl):
            ret += '*'
        if self.is_ref:
            ret += '&'
        return ret


@dataclass
class FuncParam:
    ret_type: Optional[str] = None
    params: List[str] = field(default_factory=list)

    def to_str(self) -> str:
        ret = ''
        if self.ret_type is None:
            ret += 'void'
        else:
            ret += self.ret_type
        ret += ' (*)('
        ret += ', '.join(self.params)
        ret += ')'
        return ret


class ParseError(Exception):
    ...


class ParseCtx:
    def __init__(self, mangled: str):
        self.mangled = mangled
        self.index = 0
        self.demangled = []
        self.cur_type = None
        self.class_name = None
        self.is_const = False
        self.func_name = None

    def demangle(self):
        # this split is still not accurate, but good enough for most cases
        last_f = self.mangled.rfind('F')
        if last_f == -1:
            return
        split_pos = self.mangled.rfind('__', 0, last_f)
        if split_pos == -1 or split_pos == 0:
            return
        self.func_name = self.mangled[:split_pos]
        self.mangled = self.mangled[split_pos+2:]
        if self.func_name.startswith('__'):
            match = operator_func_re.match(self.func_name)
            if match:
                special_func_name = match.group(1)
                if special_func_name in special_funcs:
                    self.func_name = special_funcs[special_func_name]
                else:
                    if special_func_name == 'ct':
                        self.func_name = '.ctor'
                    elif special_func_name == 'dt':
                        self.func_name = '.dtor'
        self.demangle_first_class()
        while self.index < len(self.mangled):
            self.demangled.append(self.demangle_next_type())
        if self.func_name == '.ctor':
            self.func_name = self.class_name
        if self.func_name == '.dtor':
            self.func_name = '~' + self.class_name
    
    def demangle_first_class(self):
        if self.peek_next_char().isdecimal():
            self.class_name = self.demangle_class()
            if self.peek_next_char() == 'C':
                self.is_const = True
                self.index += 1
            assert self.consume_next_char() == 'F', 'next char should be F!'
        elif self.peek_next_char() == 'Q':
            self.index += 1
            self.class_name = self.demangle_qualified_name()
            if self.peek_next_char() == 'C':
                self.is_const = True
                self.index += 1
            assert self.consume_next_char() == 'F', 'next char should be F!'
        else:
            assert self.consume_next_char() == 'F', 'next char should be F!'
    
    def demangle_next_type(self) -> str:
        cur_type = Param()
        while True:
            cur_char = self.peek_next_char()
            if cur_char.isdecimal():
                class_name = self.demangle_class()
                cur_type.name = class_name
                return cur_type.to_str()
            elif cur_char in types:
                type_name = self.demangle_prim_type()
                cur_type.name = type_name
                return cur_type.to_str()
            elif cur_char == 'U':
                cur_type.is_unsigned = True
                self.index += 1
            elif cur_char == 'S':
                cur_type.is_signed = True
                self.index += 1
            elif cur_char == 'C':
                cur_type.is_const = True
                self.index += 1
            elif cur_char == 'P':
                cur_type.pointer_lvl += 1
                self.index += 1
            elif cur_char == 'R':
                cur_type.is_ref = True
                self.index += 1
            elif cur_char == 'F':
                self.index += 1
                func = self.demangle_function()
                return func.to_str()
            elif cur_char == 'Q':
                self.index += 1
                return self.demangle_qualified_name()
            elif cur_char == 'A':
                if cur_type.pointer_lvl < 1 and not cur_type.is_ref:
                    raise ParseError("pointer level for array is wrong!")
                # decrease pointer level by one, cause one is already handled in the array demangle
                if not cur_type.is_ref:
                    cur_type.pointer_lvl -= 1
                cur_type.name = self.demangle_array()
                return cur_type.to_str()

            else:
                raise ParseError(f'unexpected character {cur_char}')

    def demangle_array(self) -> str:
        sizes = []
        while self.peek_next_char() == 'A':
            self.index += 1
            sizes.append(self.read_next_int())
            if self.consume_next_char() != '_':
                raise ParseError("Need to have '_' after Array size!")
        array_type = self.demangle_next_type()
        return f'{array_type} []' + ''.join(f'[{i}]' for i in sizes)

    def demangle_function(self) -> FuncParam:
        func_param = FuncParam()
        while True:
            cur_char = self.peek_next_char()
            if cur_char == '_':
                self.index += 1
                func_param.ret_type = self.demangle_next_type()
                return func_param
            func_param.params.append(self.demangle_next_type())

    def demangle_qualified_name(self) -> str:
        part_count = int(self.consume_next_char())
        parts = []
        for _ in range(part_count):
            parts.append(self.demangle_class())
        return '::'.join(parts)

    def read_next_int(self) -> int:
        class_len_str = ''
        cur_char = self.peek_next_char()
        while cur_char.isdecimal():
            class_len_str += cur_char
            self.index += 1
            cur_char = self.peek_next_char()
        return int(class_len_str)
    
    def demangle_class(self) -> str:
        if not self.peek_next_char().isdecimal():
            raise ParseError(f'class mangling must start with number')
        class_len = self.read_next_int()
        class_name = self.mangled[self.index : self.index + class_len]
        self.index += class_len
        if self.peek_next_char() == 'M':
            self.index += 1
            class_name += '::' + self.demangle_class()
        return class_name

    def demangle_prim_type(self) -> str:
        ret = types[self.consume_next_char()]
        return ret
    
    def consume_next_char(self) -> str:
        next_char = self.mangled[self.index]
        self.index += 1
        return next_char
    
    def peek_next_char(self) -> str:
        if self.index >= len(self.mangled):
            return None
        return self.mangled[self.index]
    
    def to_str(self) -> str:
        if self.func_name is None:
            return ''
        elif self.class_name is None:
            return self.func_name + '(' + ', '.join(self.demangled) + ')'
        else:
            return self.class_name + '::' + self.func_name + '(' + ', '.join(self.demangled) + ')' + (' const' if self.is_const else '')


def demangle(s):
    p = ParseCtx(s)
    p.demangle()
    return p.to_str()


def parse_framework_map(path: Path):
    address_funcname = {}
    with path.open() as f:
        for line in f.readlines():
            if line.startswith('.ctors'):
                return address_funcname
            if not line.startswith('  '):
                continue
            funcname = line[30:].split(' ', 1)[0]
            address = line[18:26]
            address_funcname[address] = funcname
    return address_funcname

# def try_demangle_all():
#     with open('frameworkF.map') as f:
#         for line in f.readlines():
#             if line.startswith('.ctors'):
#                 return
#             if not line.startswith('  '):
#                 continue
#             line = line[30:]
#             line_spl = line.split(' ',1)[0]
#             try:
#                 d = demangle(line_spl)
#                 if d:
#                     print(d)
#             # except NotImplementedError:
#             #     pass
#             except Exception as e:
#                 # print(f'could not demangle {line_spl}: {repr(e)}')
#                 # raise e
#                 pass

# try_demangle_all()
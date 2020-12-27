from typing import List, Optional
from pathlib import Path

types = {
    'i': 'int',
    'l': 'long',
    's': 'short',
    'c': 'char',
    'f': 'float',
    'd': 'double',
    'v': 'void',
}

special_funcs = {
    '__eq__': 'operator==',
    '__ne__': 'operator!=',
    '__dv__': 'operator/',
    '__pl__': 'operator+',
    '__mi__': 'operator-',
    '__ml__': 'operator*',
}

class Param:
    def __init__(self):
        self.name = ''
        self.is_pointer = False
        self.is_const = False
        self.is_ref = False
        self.is_unsigned = False
        self.is_signed = False
    
    def to_str(self) -> str:
        ret = ''
        if self.is_const:
            ret += 'const '
        if self.is_unsigned:
            ret += 'unsigned '
        ret += self.name
        if self.is_pointer:
            ret += '*'
        if self.is_ref:
            ret += '&'
        return ret

class FuncParam:
    def __init__(self):
        self.ret_type: Optional[str] = None
        self.params: List[str] = []
    
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

class ParseCtx:
    def __init__(self, mangled: str):
        self.mangled = mangled
        self.index = 0
        self.demangled = []
        self.had_first_f = False
        self.cur_type = None
        self.class_name = None
        self.func_name = None

    def demangle(self):
        if self.mangled.startswith('__'):
            assert self.mangled[4:6] == '__'
            special_func_name = self.mangled[:6]
            self.mangled = self.mangled[6:]
            if special_func_name in special_funcs:
                self.func_name = special_funcs[special_func_name]
            else:
                if special_func_name == '__ct__':
                    self.func_name = '.ctor'
                elif special_func_name == '__dt__':
                    self.func_name = '.dtor'
        else:
            split = self.mangled.split('__', 1)
            if len(split) < 2:
                return
            self.func_name = split[0]
            self.mangled = split[1]
        if self.mangled.startswith('_'):
            self.mangled.lstrip('_')
            self.func_name += '_'
        while self.index < len(self.mangled):
            cur_char = self.mangled[self.index]
            if cur_char.isdecimal():
                class_name = self.demangle_class()
                if not self.had_first_f:
                    self.class_name = class_name
                else:
                    self.ensure_cur_param()
                    self.cur_type.name = class_name
                    self.demangled.append(self.cur_type.to_str())
                    self.cur_type = None
            elif cur_char in types:
                type_name = self.demangle_prim_type()
                self.ensure_cur_param()
                self.cur_type.name = type_name
                self.demangled.append(self.cur_type.to_str())
                self.cur_type = None
            elif cur_char == 'U':
                self.ensure_cur_param()
                self.cur_type.is_unsigned = True
                self.index+=1
            elif cur_char == 'S':
                self.ensure_cur_param()
                self.cur_type.is_signed = True
                self.index+=1
            elif cur_char == 'C':
                self.ensure_cur_param()
                self.cur_type.is_const = True
                self.index+=1
            elif cur_char == 'P':
                self.ensure_cur_param()
                self.cur_type.is_pointer = True
                self.index+=1
            elif cur_char == 'R':
                self.ensure_cur_param()
                self.cur_type.is_ref = True
                self.index+=1
            elif cur_char == 'F':
                if self.had_first_f:
                    func = self.demangle_function()
                    self.cur_type = None
                    self.demangled.append(func.to_str())
                self.had_first_f = True
                self.index+=1
            else:
                raise Exception('unk char '+cur_char)
        if self.func_name == '.ctor':
            self.func_name = self.class_name
        if self.func_name == '.dtor':
            self.func_name = '~' + self.class_name
    
    def demangle_function(self):
        self.index += 1
        func_param = FuncParam()
        cur_func_param = None
        is_at_return = False
        while True:
            cur_char = self.mangled[self.index]
            if cur_char.isdecimal():
                class_name = self.demangle_class()
                if cur_func_param is None:
                    cur_func_param = Param()
                cur_func_param.name = class_name
                if is_at_return:
                    func_param.ret_type = cur_func_param.to_str()
                    return func_param
                else:
                    func_param.params.append(cur_func_param.to_str())
                cur_func_param = None
            elif cur_char in types:
                type_name = self.demangle_prim_type()
                if cur_func_param is None:
                    cur_func_param = Param()
                cur_func_param.name = type_name
                if is_at_return:
                    func_param.ret_type = cur_func_param.to_str()
                    return func_param
                else:
                    func_param.params.append(cur_func_param.to_str())
                cur_func_param = None
            elif cur_char == 'U':
                if cur_func_param is None:
                    cur_func_param = Param()
                cur_func_param.is_unsigned = True
                self.index+=1
            elif cur_char == 'S':
                if cur_func_param is None:
                    cur_func_param = Param()
                cur_func_param.is_signed = True
                self.index+=1
            elif cur_char == 'C':
                if cur_func_param is None:
                    cur_func_param = Param()
                cur_func_param.is_const = True
                self.index+=1
            elif cur_char == 'P':
                if cur_func_param is None:
                    cur_func_param = Param()
                cur_func_param.is_pointer = True
                self.index+=1
            elif cur_char == 'R':
                if cur_func_param is None:
                    cur_func_param = Param()
                cur_func_param.is_ref = True
                self.index+=1
            elif cur_char == 'F':
                raise Exception('recursive func')
            elif cur_char == '_':
                is_at_return = True
                self.index+=1
            else:
                raise Exception('unk char '+cur_char)
    
    def demangle_class(self):
        if not self.mangled[self.index].isdecimal():
            raise Exception('has to start with number!')
        class_len_str = ''
        cur_char = self.mangled[self.index]
        while cur_char.isdecimal():
            class_len_str += cur_char
            self.index+=1
            cur_char = self.mangled[self.index]
        class_len = int(class_len_str)
        class_name = self.mangled[self.index:self.index+class_len]
        self.index += class_len
        return class_name
    
    def demangle_prim_type(self):
        ret = types[self.mangled[self.index]]
        self.index += 1
        return ret
    
    def ensure_cur_param(self):
        if self.cur_type is None:
            self.cur_type = Param()
    

def demangle(s):
    p = ParseCtx(s)
    p.demangle()
    if p.func_name is None:
        return
    if p.class_name is None:
        return p.func_name + '(' + ', '.join(p.demangled) + ')'
    else:
        return p.class_name + '::' + p.func_name + '(' + ', '.join(p.demangled) + ')'

def parse_framework_map(path: Path):
    address_funcname = {}
    with path.open() as f:
        for line in f.readlines():
            if line.startswith('.ctors'):
                return address_funcname
            if not line.startswith('  '):
                continue
            funcname = line[30:].split(' ',1)[0]
            address = line[18:26]
            address_funcname[address] = funcname
    return address_funcname


def main():
    with open('frameworkF.map') as f:
        for line in f.readlines():
            if line.startswith('.ctors'):
                return
            if not line.startswith('  '):
                continue
            try:
                line = line[30:]
                line_spl = line.split(' ',1)
                demangle(line_spl[0])
            except Exception as e:
                # print(e)
                pass

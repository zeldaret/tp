
from .base import *
from .empty import *
from .builtin import *
from .pointer import *
from .reference import *
from .const import *
from .named import *
from .array import *
from .function import *
from .var import *
from .value import *


VOID = BuiltinType(name="void")
BOOL = BuiltinType(name="bool")
CHAR = BuiltinType(name="char")
INT = BuiltinType(name="int")
UINT = BuiltinType(name="unsigned int")
SINT = BuiltinType(name="int")
S8 = BuiltinType(name="s8")
S16 = BuiltinType(name="s16")
S32 = BuiltinType(name="s32")
S64 = BuiltinType(name="s64")
U8 = BuiltinType(name="u8")
U16 = BuiltinType(name="u16")
U32 = BuiltinType(name="u32")
U64 = BuiltinType(name="u64")
F32 = BuiltinType(name="f32")
F64 = BuiltinType(name="f64")
VARIADIC = VariadicType()

VOID_PTR = pointer.PointerType(of=VOID)

_builtin_types = set([
    VOID,
    BOOL,
    CHAR,
    INT,
    S8,
    S16,
    S32,
    S64,
    U8,
    U16,
    U32,
    U64,
])

_builtin_types_map = dict([
    (x.name, x) for x in _builtin_types if isinstance(x, BuiltinType)
])

def builtin_type_from_str(name: str) -> BuiltinType:
    if name in _builtin_types_map:
        return _builtin_types_map[name]
    return None

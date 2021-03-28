
from .demangle import *
from .demangle_test import *


def demangle(s: str) -> str:
    p = ParseCtx(s)
    p.demangle()
    return p.to_str()

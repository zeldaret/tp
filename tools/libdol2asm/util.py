import os
import re
import asyncio
import click
import sys
import numpy

from pathlib import Path
from functools import partial, wraps

from typing import Dict, Tuple
from decimal import getcontext, Decimal

def wrap(func):
    @wraps(func)
    async def run(*args, loop=None, executor=None, **kwargs):
        if loop is None:
            loop = asyncio.get_event_loop()
        pfunc = partial(func, *args, **kwargs)
        return await loop.run_in_executor(executor, pfunc)

    return run


def chunks(lst, n):
    for i in range(0, len(lst), n):
        yield lst[i:i + n]


def mapOverlap(data, n):
    r = [None] * n
    for x in data:
        r = r[1:] + [x]
        yield r
    for _ in range(n - 1):
        r = r[1:] + [None]
        yield r


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
    return [subl for subl in _itersplit(l, splitters)]

#
#
#


class PathPath(click.Path):
    """A Click path argument that returns a pathlib Path, not a string"""

    def convert(self, value, param, ctx):
        return Path(super().convert(value, param, ctx))

#
#
#


register_r_re = re.compile(r'r([0-9]+)')
register_f_re = re.compile(r'r([0-9]+)')
register_qr_re = re.compile(r'r([0-9]+)')


def is_register(name, regex, count):
    match = regex.fullmatch(name)
    if not match:
        return False
    try:
        reg = int(match.group(1))
        return reg < count
    except:
        return False


def is_weird(name):
    return (is_register(name, register_r_re, 32) or
            is_register(name, register_f_re, 32) or
            is_register(name, register_qr_re, 8) or
            "@" in name or "\\" in name or "." in name or "*" in name or "-" in name or "$" in name or "?" in name)


literal_re = re.compile(r'\@([0-9]+)')


def literal_name(name):
    """ Convert symbols in the form of "@number" to "LIT_number" """
    match = literal_re.fullmatch(name)
    if not match:
        return None

    return "lit_" + match.group(1)


def escape_name(n):
    """ 
    Determine if the name is "safe" (name does not use any weird characters).  
    Special names, such as, @stringBase0 or @NUMBER is converted to a more readable name.
    """

    if not n.name:
        return

    if "@" in n.name:
        if n.name.endswith("@stringBase0"):
            rname = n.name.replace("@stringBase0", "stringBase0")
            n.override_name = rname
            return

        lname = literal_name(n.name)
        if lname:
            n.override_name = lname
            return

    if is_weird(n.name):
        return

    if "<" in n.name or ">" in n.name or "," in n.name:
        return

    n.is_name_safe = True

#
#
#


def mkdir(filepath):
    path = Path("/".join(filepath.split("/")[:-1]))
    path.mkdir(parents=True, exist_ok=True)


def _create_dirs_for_file(filepath):
    parent = filepath.parent
    if parent.exists():
        return
    parent.mkdir(parents=True, exist_ok=True)


create_dirs_for_file = wrap(_create_dirs_for_file)


async def wait_all(tasks):
    await asyncio.gather(*tasks)


class CheckPathException(Exception):
    ...


def check_file(base, name):
    new_path = base.joinpath(name)
    if not new_path.is_file() or not new_path.exists():
        raise CheckPathException(
            f"file '{name}' was not found in the game directory ('{base}')")
    return new_path


def check_dir(base, name):
    new_path = base.joinpath(name)
    if new_path.is_file() or not new_path.exists():
        raise CheckPathException(
            f"path '{name}' was not found in the game directory ('{base}')")
    return new_path


def get_files_with_ext(path, ext):
    return [x for x in path.glob(f"*{ext}") if x.is_file()]

#
#
#


def bytes2float32(data):
    if len(data) < 4:
        return None
    result = numpy.frombuffer(data[0:4][::-1], dtype='float32')
    if len(result) > 0:
        return result[0]
    else:
        return None


def bytes2float64(data):
    if len(data) < 8:
        return None
    result = numpy.frombuffer(data[0:8][::-1], dtype='float64')
    if len(result) > 0:
        return result[0]
    else:
        return None


def is_nice_float(f):
    try:
        if int(f*1000) == f*1000 and abs(f) <= 10:
            return True
        if int(f*100) == f*100 and abs(f) <= 100000:
            return True
        if int(f*10) == f*10 and abs(f) <= 10000000:
            return True
        if int(f) == f and abs(f) <= 1000000000:
            return True
    except:
        return False
    return False


def is_nice_float32(f):
    return is_nice_float(f)


def is_nice_float64(f):
    return is_nice_float(f)


float32_exact: Dict[numpy.float32, Tuple[int, int]] = {}
float64_exact: Dict[numpy.float64, Tuple[int, int]] = {}

getcontext().prec = 64
for i in range(1, 128):
    for j in range(1, 128):
        if i % j == 0:
            continue
        d = Decimal(i)/Decimal(j)
        f = numpy.float32(d)
        if f"{f}" != f"{d}":
            if not f in float32_exact:
                float32_exact[f] = (i, j)

for i in range(1, 128):
    for j in range(1, 128):
        if i % j == 0:
            continue
        d = Decimal(i)/Decimal(j)
        f = numpy.float64(d)
        if f"{f}" != f"{d}":
            if not f in float64_exact:
                float64_exact[f] = (i, j)

for value, numbers in list(float32_exact.items()):
    float32_exact[-value] = (-numbers[0], numbers[1])

for value, numbers in list(float64_exact.items()):
    float64_exact[-value] = (-numbers[0], numbers[1])


def special_float32(value):
    if numpy.isposinf(value):
        return "FLOAT_INF"
    if numpy.isneginf(value):
        return "-FLOAT_INF"
    if numpy.isnan(value):
        return "FLOAT_NAN"
    return None


def special_float64(value):
    if numpy.isposinf(value):
        return "DOUBLE_INF"
    if numpy.isneginf(value):
        return "-DOUBLE_INF"
    if numpy.isnan(value):
        return "DOUBLE_NAN"
    return None

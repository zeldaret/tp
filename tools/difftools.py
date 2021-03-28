
"""

difftools.py - Tools for finding differences between binaries

TODO: NOT FINISHED!

"""

VERSION = "1.0"

import os
import sys
import click
from pathlib import Path
from collections import defaultdict

class PathPath(click.Path):
    def convert(self, value, param, ctx):
        return Path(super().convert(value, param, ctx))

def fail(name):
    sys.exit(1)

import libelf

@click.group()
@click.version_option(VERSION)
def difftools():
    """ Tools for finding differences. """
    pass

@difftools.command(name="addr")
@click.option('--truth', '-t', default="SYMDEF", type=click.Choice(['SYMDEF', 'EXPECTED', 'S', 'E'], case_sensitive=False))
@click.option('--build_path', 'build_path', required=False, type=PathPath(file_okay=False, dir_okay=True), default="build/dolzel2/")
@click.option('--expected_path', 'expected_path', required=False, type=PathPath(file_okay=False, dir_okay=True), default="expected/build/dolzel2/")
def find_bad_symbol_addr(truth, build_path, expected_path):
    """ Find symbols which have the incorrect address. """

    build_symbols = []
    build_elf = build_path.joinpath("main.elf")
    if not build_elf.exists():
        fail(f"file not found: elf file '{build_elf}'")
    build_symbols.extend(symbols_from_elf(build_elf))

    expected_symbols = []
    if truth == "EXPECTED" or truth == "E":
        if not expected_path:
            fail(f"when 'truth={truth}' the input argument 'expected_path' must be provided")

        expected_elf = expected_path.joinpath("main.elf")
        if not expected_elf.exists():
            fail(f"file not found: expected elf file '{expected_elf}'")
        expected_symbols.extend(symbols_from_elf(expected_elf))
    else:
        assert False

    # match symbols by names
    names = defaultdict(list)
    for symbol in expected_symbols:
        names[symbol.name].append(symbol)

    build_addr_map = dict()
    for symbol in build_symbols:
        build_addr_map[elf_symbol_addr(symbol)] = symbol

    # find matching symbols
    last_difference = 0
    build_symbols.sort(key =lambda x: elf_symbol_addr(x))
    for symbol in build_symbols:
        if not symbol.name in names:
            continue

        difference, closest_symbol = closest_match(symbol, names[symbol.name])
        if difference != 0:
            build_addr = elf_symbol_addr(symbol)
            closest_addr = elf_symbol_addr(closest_symbol)
            
            print("symbol with address difference found:")
            print(f"\tname:    '{symbol.name}'")
            print(f"\tsection: '{symbol.section.name}'")
            print(f"\tpath:    '{symbol.object_path}'")
            print("")
            print(f"\tcompiled addr: 0x{build_addr:08X}")
            print(f"\texpected addr: 0x{closest_addr:08X}")
            print("")
            
            previous_symbol, previous_addr = symbol_from_end(build_symbols, build_addr)
            expected_symbol = symbol_at_addr(expected_symbols, previous_addr)
            if previous_symbol and expected_symbol:
                print("this is the expected symbol before the problem symbol:")
                previous_start = elf_symbol_addr(previous_symbol)
                previous_end = previous_start + previous_symbol.size
                print(f"\t{previous_start:08X} {previous_end:08X} {previous_symbol.size:04X} {previous_symbol.name} (compiled)")

                expected_start = elf_symbol_addr(expected_symbol)
                expected_end = expected_start + expected_symbol.size
                print(f"\t{expected_start:08X} {expected_end:08X} {expected_symbol.size:04X} {expected_symbol.name} (expected)")

                if previous_symbol.size != expected_symbol.size:
                    print("\t!!! the size of this symbol is incorrect !!!")  
                    sys.exit()   

                if expected_end != previous_end:
                    print("\t!!! the size of this symbol is incorrect !!!")
                    sys.exit()  

                inbetween_symbol = symbol_at_addr(expected_symbols, expected_end)
                if inbetween_symbol:
                    print("found extra symbol in expected:")
                    start = elf_symbol_addr(inbetween_symbol)
                    end = start + inbetween_symbol.size
                    print(f"\t{start:08X} {end:08X} {inbetween_symbol.size:04X} {inbetween_symbol.name}")
                    print("\t!!! the compiled version is missing this symbol !!!")

                sys.exit()

            if symbol.size != closest_symbol.size:
                print("symbol with size difference found:")
                print(f"\tname:    '{symbol.name}'")
                print(f"\tsection: '{symbol.section.name}'")
                print(f"\tpath:    '{symbol.object_path}'")
                print("")
                print(f"\tcompiled size: 0x{symbol.size:04X}")
                print(f"\texpected size: 0x{closest_symbol.size:04X}")
                sys.exit()

            sys.exit()

    for symbol in expected_symbols:
        addr = elf_symbol_addr(symbol)

        if not addr in build_addr_map:
            print("compiled is missing symbol:")
            print(f"\tname:    '{symbol.name}'")
            print(f"\tsection: '{symbol.section.name}'")
            print(f"\tpath:    '{symbol.object_path}'")
            print(f"\taddr:    0x{addr:08X}")
            print(f"\tsize:    0x{size:04X}")
            sys.exit()

@difftools.command(name="info")
@click.option('--truth', '-t', default="SYMDEF", type=click.Choice(['SYMDEF', 'EXPECTED', 'S', 'E'], case_sensitive=False))
@click.option('--build_path', 'build_path', required=False, type=PathPath(file_okay=False, dir_okay=True), default="build/dolzel2/")
@click.option('--expected_path', 'expected_path', required=False, type=PathPath(file_okay=False, dir_okay=True), default="expected/build/dolzel2/")
@click.argument('names', nargs=-1)
def info_about_symbol(truth, build_path, expected_path, names):
    """ Display information about symbols (both in the build and the truth). """

    build_symbols = []
    build_elf = build_path.joinpath("main.elf")
    if not build_elf.exists():
        fail(f"file not found: elf file '{build_elf}'")
    build_symbols.extend(symbols_from_elf(build_elf))

    expected_symbols = []
    if truth == "EXPECTED" or truth == "E":
        if not expected_path:
            fail(f"when 'truth={truth}' the input argument 'expected_path' must be provided")

        expected_elf = expected_path.joinpath("main.elf")
        if not expected_elf.exists():
            fail(f"file not found: expected elf file '{expected_elf}'")
        expected_symbols.extend(symbols_from_elf(expected_elf))
    else:
        assert False

    for name in names:
        build_symbols = symbols_by_name(build_symbols, name)
        expected_symbols = symbols_by_name(expected_symbols, name)

        print(f"###### {name} ######")
        print("-- Build --")
        for s in build_symbols:
            print(f"\t{elf_symbol_addr(s):08X} {s.size:04X} {s.name}")
        print("-- Expected --")
        for s in expected_symbols:
            print(f"\t{elf_symbol_addr(s):08X} {s.size:04X} {s.name}")

def symbols_by_name(symbols, name):
    return [ symbol for symbol in symbols if symbol.name == name ]

def symbol_at_addr(symbols, addr):
    for symbol in symbols:
        start = elf_symbol_addr(symbol)
        if start == addr:
            return symbol
    return None

def symbol_from_end(symbols, end_addr):
    for symbol in symbols:
        start = elf_symbol_addr(symbol)
        end = start + symbol.size
        if end >= end_addr:
            return symbol, start
    return None

def closest_match(symbol, matches):
    difference = 0x1000000
    closest_symbol = None
    build_addr = elf_symbol_addr(symbol)
    for found_symbol in matches:
        expected_addr = elf_symbol_addr(found_symbol)
        diff = abs(build_addr - expected_addr)
        if diff < difference:
            closest_symbol = found_symbol
            difference = diff
    return difference, closest_symbol
            
def elf_symbol_addr(symbol):
    addr = symbol.offset
    if symbol.section and symbol.section.addr:
        addr += symbol.section.addr
    return addr

def symbols_from_object(obj):
    # TODO: possible to read what translation unit each symbol is in
    symbols = []
    for sym in obj.symbols:
        if sym.isSection():
            continue
        if sym.isFile():
            continue
        if not isinstance(sym, libelf.OffsetSymbol):
            continue
        setattr(sym, 'object_path', obj.path) # TODO: not the best...
        symbols.append(sym)
    return symbols

def symbols_from_elf(path):
    with open(path, 'rb') as file:
        obj = libelf.load_object_from_file(path, path.name, file)
        return symbols_from_object(obj)
    return []  

@difftools.command(name="section")
@click.option('--truth', '-t', default="SYMDEF", type=click.Choice(['SYMDEF', 'EXPECTED', 'S', 'E'], case_sensitive=False))
@click.option('--build_path', 'build_path', required=False, type=PathPath(file_okay=False, dir_okay=True), default="build/dolzel2/")
@click.option('--expected_path', 'expected_path', required=False, type=PathPath(file_okay=False, dir_okay=True), default="expected/build/dolzel2/")
@click.argument('section', nargs=1)
def section_diff(truth, build_path, expected_path, section):
    
    build_symbols = []
    build_elf = build_path.joinpath("main.elf")
    if not build_elf.exists():
        fail(f"file not found: elf file '{build_elf}'")
    build_symbols.extend(symbols_from_elf(build_elf))

    expected_symbols = []
    if truth == "EXPECTED" or truth == "E":
        if not expected_path:
            fail(f"when 'truth={truth}' the input argument 'expected_path' must be provided")

        expected_elf = expected_path.joinpath("main.elf")
        if not expected_elf.exists():
            fail(f"file not found: expected elf file '{expected_elf}'")
        expected_symbols.extend(symbols_from_elf(expected_elf))
    else:
        assert False

    build_symbols.sort(key=lambda x:elf_symbol_addr(x))
    expected_symbols.sort(key=lambda x:elf_symbol_addr(x))

    build_dict = dict()
    expected_dict = dict()

    for symbol in build_symbols:
        if symbol.section.name != section:
            continue
        build_dict[elf_symbol_addr(symbol)] = symbol
    for symbol in expected_symbols:
        if symbol.section.name != section:
            continue
        expected_dict[elf_symbol_addr(symbol)] = symbol

    keys = set([*build_dict.keys(), *expected_dict.keys()])
    keys_list = list(keys)
    keys_list.sort()

    for key in keys_list:
        in_build = key in build_dict
        in_expected = key in expected_dict

        if in_build and not in_expected:
            print(f"+ {key:08X} {build_dict[key].size:04X} {build_dict[key].section.name:<10} '{build_dict[key].name}'")
        elif not in_build and in_expected:
            print(f"- {key:08X} {expected_dict[key].size:04X} {expected_dict[key].section.name:<10} '{expected_dict[key].name}'")
        else:
            build_sym = build_dict[key]
            expected_sym = expected_dict[key]
            print(f"= {key:08X} {build_sym.size:04X}/{expected_sym.size:04X}  {build_sym.section.name:<10} '{build_sym.name}' '{expected_sym.name}'")

if __name__ == "__main__":
    difftools()
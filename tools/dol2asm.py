"""

dol2asm.py - Script for splitting .dol and .rel binaries into C++ and .s code.

This script only calls the underlaying libdol2asm code that does the heavy-lifting.

"""

import click
import libdol2asm

from pathlib import Path


@click.command()
@click.version_option(libdol2asm.VERSION)
@click.option("--debug/--no-debug", help="enable/disable debug logging", default=False)
@click.option(
    "--game",
    "game_path",
    help=f"Path to extracted game files. (same directory as 'main.dol' is in)",
    required=False,
    type=libdol2asm.util.PathPath(file_okay=False, dir_okay=True),
    default="game/",
)
@click.option(
    "--lib-path",
    "lib_path",
    help="Where to put generated library source files.",
    required=False,
    type=libdol2asm.util.PathPath(file_okay=False, dir_okay=True),
    default="libs/",
)
@click.option(
    "--src-path",
    "src_path",
    help="Where to put generated source files.",
    required=False,
    type=libdol2asm.util.PathPath(file_okay=False, dir_okay=True),
    default="src/",
)
@click.option(
    "--asm-path",
    "asm_path",
    help="Where to put generated asm files.",
    required=False,
    type=libdol2asm.util.PathPath(file_okay=False, dir_okay=True),
    default="asm/",
)
@click.option(
    "--rel-path",
    "rel_path",
    help="Where to put generated rel source files.",
    required=False,
    type=libdol2asm.util.PathPath(file_okay=False, dir_okay=True),
    default="rel/",
)
@click.option(
    "--include-path",
    "inc_path",
    help="Where to put generated include files.",
    required=False,
    type=libdol2asm.util.PathPath(file_okay=False, dir_okay=True),
    default="include/",
)
@click.option("--cpp/--no-cpp", "cpp_gen", default=True)
@click.option("--asm/--no-asm", "asm_gen", default=True)
@click.option("--makefile/--no-makefile", "mk_gen", default=True)
@click.option("--symbols/--no-symbols", "sym_gen", default=True)
@click.option("--rels/--no-rels", "rel_gen", default=True)
@click.option("--threads", "-j", "process_count", default=8)
@click.option(
    "--select-module",
    "-g",
    "select_modules",
    help="Select what modules to generate. Default is everything.",
    multiple=True,
)
@click.option("--select-asm", "-n", "select_asm", multiple=True)
@click.option("--select-tu", "-t", "select_tu", multiple=True)
def main(
    debug,
    game_path,
    asm_path,
    lib_path,
    src_path,
    rel_path,
    inc_path,
    mk_gen,
    cpp_gen,
    asm_gen,
    sym_gen,
    rel_gen,
    process_count,
    select_modules,
    select_tu,
    select_asm,
):
    return libdol2asm.split(
        debug,
        game_path,
        lib_path,
        src_path,
        asm_path,
        rel_path,
        inc_path,
        mk_gen,
        cpp_gen,
        asm_gen,
        sym_gen,
        rel_gen,
        process_count,
        select_modules,
        select_tu,
        select_asm,
    )


if __name__ == "__main__":
    main()

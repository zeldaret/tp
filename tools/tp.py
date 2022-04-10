"""

tp.py - Various tools used for the zeldaret/tp project.

"""

import os
import sys
import time
import struct
import json
import subprocess
import multiprocessing as mp
import shutil

from dataclasses import dataclass, field
from typing import Dict
from pathlib import Path

try:
    import click
    import logging
    import hashlib
    import git
    import libdol
    import librel
    import libarc
    import yaz0
    import io
    import extract_game_assets

    from rich.logging import RichHandler
    from rich.console import Console
    from rich.progress import Progress
    from rich.text import Text
    from rich.table import Table
except ImportError as e:
    MISSING_PREREQUISITES = (
        f"Missing prerequisite python module {e}.\n"
        f"Run `python3 -m pip install --user -r tools/requirements.txt` to install prerequisites."
    )

    print(MISSING_PREREQUISITES, file=sys.stderr)
    sys.exit(1)


class PathPath(click.Path):
    def convert(self, value, param, ctx):
        return Path(super().convert(value, param, ctx))


VERSION = "1.0"
CONSOLE = Console()

logging.basicConfig(
    level="NOTSET",
    format="%(message)s",
    datefmt="[%X]",
    handlers=[RichHandler(console=CONSOLE, rich_tracebacks=True)],
)

LOG = logging.getLogger("rich")
LOG.setLevel(logging.INFO)

loggers = [logging.getLogger(name) for name in logging.root.manager.loggerDict]
for logger in loggers:
    logger.setLevel(logging.INFO)

DEFAULT_GAME_PATH = "game"
DEFAULT_TOOLS_PATH = "tools"
DEFAULT_BUILD_PATH = "build/dolzel2"
DEFAULT_EXPECTED_PATH = "expected/build/dolzel2"


@click.group()
@click.version_option(VERSION)
def tp():
    """Tools to help the decompilation of "The Legend of Zelda: Twilight Princess" """
    pass


@tp.command(name="expected")
@click.option("--debug/--no-debug")
@click.option(
    "--build-path",
    type=PathPath(file_okay=False, dir_okay=True),
    default=DEFAULT_BUILD_PATH,
    required=True,
)
@click.option(
    "--expected-path",
    type=PathPath(file_okay=False, dir_okay=True),
    default=DEFAULT_EXPECTED_PATH,
    required=True,
)
def expected_copy(debug, build_path, expected_path):
    """Copy the current build folder to the expected folder"""

    if debug:
        LOG.setLevel(logging.DEBUG)

    if not build_path.exists() or not build_path.is_dir():
        LOG.error(
            f"You need to successfully build the project before copy into expected folder."
        )
        sys.exit(1)

    shutil.rmtree(expected_path, ignore_errors=True)
    expected_path.mkdir(exist_ok=True, parents=True)

    CONSOLE.log(f"src: '{build_path}'")
    CONSOLE.log(f"dst: '{expected_path}'")
    shutil.copytree(build_path, expected_path, dirs_exist_ok=True)


@tp.command(name="setup")
@click.option("--debug/--no-debug")
@click.option(
    "--game-path",
    type=PathPath(file_okay=False, dir_okay=True),
    default=DEFAULT_GAME_PATH,
    required=True,
)
@click.option(
    "--tools-path",
    type=PathPath(file_okay=False, dir_okay=True),
    default=DEFAULT_TOOLS_PATH,
    required=True,
)
def setup(debug, game_path, tools_path):
    """Setup project"""

    if debug:
        LOG.setLevel(logging.DEBUG)

    #
    text = Text("--- Creating directories")
    text.stylize("bold magenta")
    CONSOLE.print(text)
    if not game_path.exists():
        game_path.mkdir(parents=True, exist_ok=True)

    if not tools_path.exists() or not tools_path.is_dir():
        LOG.error(f"Tools directory missing '{tools_path}'")
        sys.exit(1)

    #
    text = Text("--- Patching compiler")
    text.stylize("bold magenta")
    CONSOLE.print(text)

    compilers = tools_path.joinpath("mwcc_compiler")
    if not compilers.exists() or not compilers.is_dir():
        LOG.error(
            (
                f"Unable to find MWCC compilers: missing directory '{compilers}'\n"
                f"Check the README for instructions on how to obtain the compilers"
            )
        )
        sys.exit(1)

    c27 = compilers.joinpath("2.7")
    if not c27.exists() or not c27.is_dir():
        LOG.error(
            (
                f"Unable to find MWCC compiler version 2.7: missing directory '{c27}'\n"
                f"Check the README for instructions on how to obtain the compilers"
            )
        )
        sys.exit(1)

    c27_lmgr326b = c27.joinpath("Lmgr326b.dll")
    if not c27_lmgr326b.exists() or not c27_lmgr326b.is_file():
        c27_lmgr326b = c27.joinpath("lmgr326b.dll")
    if not c27_lmgr326b.exists() or not c27_lmgr326b.is_file():
        c27_lmgr326b = c27.joinpath("LMGR326B.dll")
    if not c27_lmgr326b.exists() or not c27_lmgr326b.is_file():
        c27_lmgr326b = c27.joinpath("LMGR326B.DLL")
    if not c27_lmgr326b.exists() or not c27_lmgr326b.is_file():
        LOG.error(
            (
                f"Unable to find 'lmgr326b.dll' in '{c27}': missing file '{c27_lmgr326b}'\n"
                f"Check the README for instructions on how to obtain the compilers"
            )
        )
        sys.exit(1)

    c27_lmgr326b_cc = c27.joinpath("LMGR326B.dll")
    if not c27_lmgr326b_cc.exists() or not c27_lmgr326b_cc.is_file():
        LOG.debug(f"copy: '{c27_lmgr326b}', to: '{c27_lmgr326b_cc}'")
        shutil.copy(c27_lmgr326b, c27_lmgr326b_cc)

    c27_mwcceppc = c27.joinpath("mwcceppc.exe")
    if not c27_mwcceppc.exists() or not c27_mwcceppc.is_file():
        LOG.error(
            (
                f"Unable to find 'mwcceppc.exe' in '{c27}': missing file '{c27_mwcceppc}'\n"
                f"Check the README for instructions on how to obtain the compilers"
            )
        )
        sys.exit(1)

    c27_mwldeppc = c27.joinpath("mwldeppc.exe")
    if not c27_mwldeppc.exists() or not c27_mwldeppc.is_file():
        LOG.error(
            (
                f"Unable to find 'mwldeppc.exe' in '{c27}': missing file '{c27_mwldeppc}'\n"
                f"Check the README for instructions on how to obtain the compilers"
            )
        )
        sys.exit(1)

    MWCCEPPC_SHA1 = "100DD3A2898A1ECE55462801D42FF5DE8B42E29F"
    MWCCEPPC_PATCHED_SHA1 = "22C7DCFBAD7FE0710C84EA714B81C5220D8E2996"
    MWLDEPPC_SHA1 = "8225A47FF099A3AECB32CD307A95CB69B30A6A84"

    with c27_mwcceppc.open("rb") as file:
        mwcceppc_sha1 = sha1_from_data(bytearray(file.read()))

    with c27_mwldeppc.open("rb") as file:
        mwldeppc_sha1 = sha1_from_data(bytearray(file.read()))

    c27_mwcceppc_old = c27.joinpath("mwcceppc.old.exe")
    c27_mwcceppc_orignal = c27.joinpath("mwcceppc.exe")
    c27_mwcceppc_patched = c27.joinpath("mwcceppc_patched.exe")

    def patch_compiler(src, dst, apply):
        with src.open("rb") as src_file:
            with dst.open("wb") as dst_file:
                data = bytearray(src_file.read())
                if apply:
                    data[0x001C6A54] = 0x6D
                else:
                    data[0x001C6A54] = 0x69
                dst_file.write(data)

    if mwcceppc_sha1 == MWCCEPPC_SHA1:
        LOG.debug(f"found original compiler: '{c27_mwcceppc}' ('{mwcceppc_sha1}')")
        c27_mwcceppc_old.unlink(missing_ok=True)
        shutil.move(c27_mwcceppc, c27_mwcceppc_old)
        shutil.copy(c27_mwcceppc_old, c27_mwcceppc_orignal)
        patch_compiler(c27_mwcceppc_old, c27_mwcceppc_patched, apply=True)  # patch
    elif mwcceppc_sha1 == MWCCEPPC_PATCHED_SHA1:
        LOG.debug(f"found patched compiler: '{c27_mwcceppc}' ('{mwcceppc_sha1}')")
        c27_mwcceppc_old.unlink(missing_ok=True)
        shutil.move(c27_mwcceppc, c27_mwcceppc_old)
        shutil.copy(c27_mwcceppc_old, c27_mwcceppc_patched)
        patch_compiler(
            c27_mwcceppc_old, c27_mwcceppc_orignal, apply=False
        )  # revert patch
    else:
        LOG.error(
            (
                f"Invalid 'mwcceppc.exe' checksum of '{mwcceppc_sha1}'\n"
                f"Check the README for instructions on how to obtain the compilers"
            )
        )
        sys.exit(1)

    #
    text = Text("--- Extracting game assets")
    text.stylize("bold magenta")
    CONSOLE.print(text)

    iso = Path("gz2e01.iso")
    if not iso.exists() or not iso.is_file():
        LOG.error(
            (
                f"Missing file '{iso}'.\n"
                f"Did you forget to copy the NTSC-U version in the root directory?"
            )
        )
        sys.exit(1)

    try:
        previous_dir = os.getcwd()
        os.chdir(str(game_path.absolute()))
        extract_game_assets.extract("../" + str(iso))
        os.chdir(previous_dir)
    except e as Exception:
        LOG.error(f"failure:")
        LOG.error(e)
        sys.exit(1)

    text = Text("--- Complete")
    text.stylize("bold magenta")
    CONSOLE.print(text)
    CONSOLE.print("You should now be able to build the project 👍")
    CONSOLE.print("Check the README for instructions for further instructions")


#
# Progress
#
@tp.command(name="progress")
@click.option("--debug/--no-debug")
@click.option("--matching/--no-matching", default=True, is_flag=True)
@click.option("--print-rels", default=True, is_flag=True)
@click.option(
    "--format",
    "-f",
    default="FANCY",
    type=click.Choice(["FANCY", "CSV", "JSON-SHIELD", "JSON"], case_sensitive=False),
)
@click.option(
    "--build-path",
    type=PathPath(file_okay=False, dir_okay=True),
    default=DEFAULT_BUILD_PATH,
    required=True,
)
def progress(debug, matching, format, print_rels, build_path):
    """Calculate decompilation progress"""

    if debug:
        LOG.setLevel(logging.DEBUG)

    if format == "FANCY":
        text = Text("--- Progress")
        text.stylize("bold magenta")
        CONSOLE.print(text)

    calculate_progress(build_path, matching, format, print_rels)


#
# Check
#
@tp.command(name="check")
@click.option("--debug/--no-debug")
@click.option("--rels", default=False, is_flag=True)
@click.option(
    "--game-path",
    type=PathPath(file_okay=False, dir_okay=True),
    default=DEFAULT_GAME_PATH,
    required=True,
)
@click.option(
    "--build-path",
    type=PathPath(file_okay=False, dir_okay=True),
    default=DEFAULT_BUILD_PATH,
    required=True,
)
def check(debug, rels, game_path, build_path):
    """Compare SHA1 Checksums"""

    if debug:
        LOG.setLevel(logging.DEBUG)

    text = Text("--- Check")
    text.stylize("bold magenta")
    CONSOLE.print(text)

    try:
        check_sha1(game_path/"files", build_path, rels)
        text = Text("    OK")
        text.stylize("bold green")
        CONSOLE.print(text)
    except CheckException as e:
        LOG.error(e)
        text = Text("    ERR")
        text.stylize("bold red")
        CONSOLE.print(text)
        sys.exit(1)


@dataclass
class ProgressSection:
    name: str
    addr: int
    size: int
    decompiled: int

    @property
    def percentage(self):
        return 100 * (self.decompiled / self.size)


@dataclass
class ProgressGroup:
    name: str
    size: int
    decompiled: int
    sections: Dict[str, ProgressSection] = field(default_factory=dict)

    @property
    def percentage(self):
        return 100 * (self.decompiled / self.size)


def calculate_rel_progress(build_path, matching, format, asm_files, ranges):
    results = []
    start = time.time()
    rel_paths = get_files_with_ext(build_path.joinpath("rel"), ".rel")
    end = time.time()
    LOG.debug(f"get_files_with_ext: {(end - start)*1000} ms")

    start = time.time()
    from collections import defaultdict

    range_dict = defaultdict(list)
    for file, range in zip(asm_files, ranges):
        str_file = str(file)
        if not str_file.startswith("asm/rel/"):
            continue
        rel = str_file.split("/")[-2]
        range_dict[rel].append(range[1] - range[0])

    end = time.time()
    LOG.debug(f"range_dict: {(end - start)*1000} ms")

    for rel_path in rel_paths:
        start = time.time()

        size = rel_path.stat().st_size
        name = rel_path.name.replace(".rel", "")
        end = time.time()

        rel_ranges = range_dict[name]
        decompiled = size - sum(rel_ranges)
        results.append(ProgressGroup(name, size, decompiled, {}))

    return results


def calculate_dol_progress(build_path, matching, format, asm_files, ranges):
    # read .dol file
    dol_path = build_path.joinpath("main.dol")
    if not dol_path.exists():
        LOG.error(f"Unable to read '{dol_path}'")
        sys.exit(1)

    with dol_path.open("rb") as file:
        data = file.read()
        dol = libdol.read(data)

    # get section sizes
    total_size = len(data)
    format_size = 0x100

    # assume everything is decompiled
    sections = dict(
        [
            (
                section.name,
                ProgressSection(
                    section.name,
                    section.addr,
                    section.aligned_size,
                    section.aligned_size,
                ),
            )
            for section in dol.sections
            if section.data
        ]
    )

    init = dol.get_named_section(".init")
    assert init

    text = dol.get_named_section(".text")
    assert text

    LOG.debug(f"init {init.addr:08X}-{init.addr + init.size:08X}")
    LOG.debug(f"text {text.addr:08X}-{text.addr + text.size:08X}")

    # substract the size of each asm function
    for function_range in ranges:
        if function_range[0] >= init.addr and function_range[1] < init.addr + init.size:
            sections[".init"].decompiled -= function_range[1] - function_range[0]
        elif (
            function_range[0] >= text.addr and function_range[1] < text.addr + text.size
        ):
            sections[".text"].decompiled -= function_range[1] - function_range[0]

    total_decompiled_size = format_size + sum(
        [section.decompiled for section in sections.values()]
    )

    return ProgressGroup("main.dol", total_size, total_decompiled_size, sections)


def calculate_progress(build_path, matching, format, print_rels):
    if not matching:
        LOG.error("non-matching progress is not support yet.")
        sys.exit(1)

    start = time.time()
    # find all _used_ asm files
    asm_files = find_used_asm_files(not matching, use_progress_bar=(format == "FANCY"))
    end = time.time()
    LOG.debug(f"find_used_asm_files: {(end - start)*1000} ms")

    start = time.time()
    # calculate the range each asm file occupies
    ranges = find_function_ranges(asm_files)
    end = time.time()
    LOG.debug(f"find_function_ranges: {(end - start)*1000} ms")

    start = time.time()
    dol_progress = calculate_dol_progress(
        build_path, matching, format, asm_files, ranges
    )
    end = time.time()
    LOG.debug(f"calculate_dol_progress: {(end - start)*1000} ms")

    rel_size = 0
    rel_decompiled = 0
    rels_progress = []
    if print_rels:
        start = time.time()
        rels_progress = calculate_rel_progress(
            build_path, matching, format, asm_files, ranges
        )
        end = time.time()
        LOG.debug(f"calculate_rel_progress: {(end - start)*1000} ms")

        for rel in rels_progress:
            rel_size += rel.size
            rel_decompiled += rel.decompiled

    total_size = dol_progress.size + rel_size
    decompiled_size = dol_progress.decompiled + rel_decompiled

    if format == "FANCY":
        tableString = "# Twilight Princess Decompilation Progress\n\n## Dol\n\nSection | Percentage | Decompiled (bytes) | Total (bytes)\n---|---|---|---\n"
        table = Table(title="main.dol")
        table.add_column("Section", justify="right", style="cyan", no_wrap=True)
        table.add_column("Percentage", style="green")
        table.add_column("Decompiled (bytes)", justify="right", style="bright_yellow")
        table.add_column("Total (bytes)", justify="right", style="bright_magenta")

        for name, section in dol_progress.sections.items():
            table.add_row(
                name,
                f"{section.percentage:10.6f}%",
                f"{section.decompiled}",
                f"{section.size}",
            )
            tableString = tableString+name+" | "+f"{section.percentage:10.6f}%"+" | "+f"{section.decompiled}"+" | "+f"{section.size}"+"\n"

        table.add_row("", "", "", "")
        table.add_row(
            "total",
            f"{dol_progress.percentage:10.6f}%",
            f"{dol_progress.decompiled}",
            f"{dol_progress.size}",
        )
        tableString = tableString+"Total | "+f"{dol_progress.percentage:10.6f}%"+" | "+f"{dol_progress.decompiled}"+" | "+f"{dol_progress.size}"+"\n\n"

        CONSOLE.print(table)

        tableString = tableString+"## Total\n\nSection | Percentage | Decompiled (bytes) | Total (bytes)\n---|---|---|---\n"
        tableString = tableString+"main.dol | "+f"{dol_progress.percentage:10.6f}%"+" | "+f"{dol_progress.decompiled}"+" | "+f"{dol_progress.size}"+"\n"
        if print_rels:
            tableString = tableString+"RELs | "+f"{100 * (rel_decompiled / rel_size):10.6f}%"+" | "+f"{rel_decompiled}"+" | "+f"{rel_size}"+"\n"
        tableString = tableString+"Total | "+f"{100 * (decompiled_size / total_size):10.6f}%"+" | "+f"{decompiled_size}"+" | "+f"{total_size}"+"\n\n"


        if print_rels:
            tableString = tableString+"## RELs\n\nSection | Percentage | Decompiled (bytes) | Total (bytes)\n---|---|---|---\n"
            table = Table(title="RELs")
            table.add_column("Section", justify="right", style="cyan", no_wrap=True)
            table.add_column("Percentage", style="green")
            table.add_column(
                "Decompiled (bytes)", justify="right", style="bright_yellow"
            )
            table.add_column("Total (bytes)", justify="right", style="bright_magenta")

            for rel in rels_progress:
                table.add_row(
                    rel.name,
                    f"{rel.percentage:10.6f}%",
                    f"{rel.decompiled}",
                    f"{rel.size}",
                )
                tableString = tableString+rel.name+" | "+f"{rel.percentage:10.6f}%"+" | "+f"{rel.decompiled}"+" | "+f"{rel.size}"+"\n"

            table.add_row("", "", "", "")
            table.add_row(
                "total",
                f"{100 * (rel_decompiled / rel_size):10.6f}%",
                f"{rel_decompiled}",
                f"{rel_size}",
            )
            tableString = tableString+"Total | "+f"{100 * (rel_decompiled / rel_size):10.6f}%"+" | "+f"{rel_decompiled}"+" | "+f"{rel_size}"+"\n"
            CONSOLE.print(table)

        
        table = Table(title="Total")
        table.add_column("Section", justify="right", style="cyan", no_wrap=True)
        table.add_column("Percentage", style="green")
        table.add_column("Decompiled (bytes)", justify="right", style="bright_yellow")
        table.add_column("Total (bytes)", justify="right", style="bright_magenta")

        table.add_row(
            "main.dol",
            f"{dol_progress.percentage:10.6f}%",
            f"{dol_progress.decompiled}",
            f"{dol_progress.size}",
        )
       
        if rels_progress:
            table.add_row(
                "RELs",
                f"{100 * (rel_decompiled / rel_size):10.6f}%",
                f"{rel_decompiled}",
                f"{rel_size}",
            )
        else:
            # if we don't have any rel progress, just indicate N/A
            table.add_row("RELs", "–".center(11), f"–", f"–")

        table.add_row("", "", "", "")
        table.add_row(
            "total",
            f"{100 * (decompiled_size / total_size):10.6f}%",
            f"{decompiled_size}",
            f"{total_size}",
        )
        CONSOLE.print(table)
        open("Progress.md","w").write(tableString)
    elif format == "CSV":
        version = 1
        git_object = git.Repo().head.object
        timestamp = str(git_object.committed_date)
        git_hash = git_object.hexsha

        data = [
            str(version),
            timestamp,
            git_hash,
            str(dol_progress.decompiled),
            str(dol_progress.size),
            str(rel_decompiled),
            str(rel_size),
            str(decompiled_size),
            str(total_size),
        ]
        print(",".join(data))
    elif format == "JSON-SHIELD":
        # https://shields.io/endpoint
        print(
            json.dumps(
                {
                    "schemaVersion": 1,
                    "label": "progress",
                    "message": f"{100 * (decompiled_size / total_size):.3g}%",
                    "color": "yellow",  # TODO: color
                }
            )
        )
    elif format == "JSON":
        matching = {}
        non_matching = {}

        matching["main.dol"] = {
            "decompiled": dol_progress.decompiled,
            "total": dol_progress.size,
            "sections": [
                {
                    name: {
                        "decompiled": sec.decompiled,
                        "total": sec.size,
                    }
                }
                for name, sec in dol_progress.sections.items()
            ],
        }

        if rels_progress:
            matching["rels"] = {
                "decompiled": rel_decompiled,
                "total": rel_size,
            }

            for rel in rels_progress:
                matching[rel.name] = {
                    "decompiled": rel.decompiled,
                    "total": rel.size,
                }

        print(
            json.dumps(
                {
                    "matching": matching,
                    "non-matchgin": non_matching,
                }
            )
        )
    else:
        print(dol_progress.percentage)
        print(100 * (rel_decompiled / rel_size))
        print(100 * (decompiled_size / total_size))
        LOG.error("unknown format: '{format}'")



def find_function_range(asm):
    with asm.open("r") as file:
        lines = file.readlines()
        for line in lines:
            if line.startswith("/* "):
                fast_first = int(line[3:11], 16)
                break

        for line in lines[::-1]:
            if line.startswith("/* "):
                fast_last = int(line[3:11], 16) + 4
                break

        return (fast_first, fast_last)


def find_function_ranges(asm_files):
    if len(asm_files) < 128:
        return [find_function_range(x) for x in asm_files]

    thread_count = 4
    with mp.Pool(processes=2 * thread_count) as pool:
        jobs_left = len(asm_files)
        result = pool.map_async(find_function_range, asm_files)
        while result._number_left > 0:
            time.sleep(1 / 20)

        function_ranges = result.get()
        return function_ranges


#
# Remove ASM
#
@tp.command(
    name="remove-unused-asm",
    help="Remove all of the asm that is decompiled and not used anymore",
)
@click.option("--check", default=False, is_flag=True)
def remove_unused_asm_cmd(check):
    result = remove_unused_asm(check)
    if check:
        if result == 0:
            print("OK")
            sys.exit(0)
        else:
            sys.exit(1)


def remove_unused_asm(check):
    unused_files, error_files = find_unused_asm_files(False, use_progress_bar=not check)

    if not check:
        for unused_file in unused_files:
            unused_file.unlink()
            CONSOLE.print(f"removed '{unused_file}'")

        text = Text("    OK")
        text.stylize("bold green")
        CONSOLE.print(text)

    return len(unused_files)


#
# Pull-Request
#
@tp.command(name="pull-request")
@click.option("--debug/--no-debug")
@click.option(
    "--rels",
    default=False,
    is_flag=True,
    help="RELs will also be build and checked",
)
@click.option(
    "--thread-count",
    "-j",
    "thread_count",
    help="This option is passed forward to all 'make' commands.",
    default=4,
)
@click.option(
    "--game-path",
    type=PathPath(file_okay=False, dir_okay=True),
    default=DEFAULT_GAME_PATH,
    required=True,
)
@click.option(
    "--build-path",
    type=PathPath(file_okay=False, dir_okay=True),
    default=DEFAULT_BUILD_PATH,
    required=True,
)
def pull_request(debug, rels, thread_count, game_path, build_path):
    """Verify that everything is OK before pull-request"""

    if debug:
        LOG.setLevel(logging.DEBUG)

    text = Text("Pull-Request Checklist:")
    text.stylize("bold")
    CONSOLE.print(text)

    #
    text = Text("--- Remove unused .s files")
    text.stylize("bold magenta")
    CONSOLE.print(text)

    remove_unused_asm(False)

    #
    text = Text("--- Full Rebuild")
    text.stylize("bold magenta")
    CONSOLE.print(text)

    if rebuild(thread_count, rels):
        text = Text("    OK")
        text.stylize("bold green")
        CONSOLE.print(text)
    else:
        text = Text("    ERR")
        text.stylize("bold red")
        CONSOLE.print(text)
        sys.exit(1)

    #
    text = Text("--- Check")
    text.stylize("bold magenta")
    CONSOLE.print(text)

    try:
        check_sha1(game_path, build_path, rels)
        text = Text("    OK")
        text.stylize("bold green")
        CONSOLE.print(text)
    except CheckException as e:
        LOG.error(e)
        text = Text("    ERR")
        text.stylize("bold red")
        CONSOLE.print(text)
        sys.exit(1)

    #
    text = Text("--- Calculate Progress")
    text.stylize("bold magenta")
    CONSOLE.print(text)

    calculate_progress(build_path, True, "FANCY", rels)


def find_all_asm_files():
    """Recursivly find all files in the 'asm/' folder"""

    files = set()
    errors = set()

    def recursive(parent):
        paths = sorted(
            parent.iterdir(),
            key=lambda path: (path.is_file(), path.name.lower()),
        )
        for path in paths:
            if path.name.startswith("."):
                continue
            if path.is_dir():
                recursive(path)
            else:
                if path.suffix == ".s":
                    files.add(path)
                else:
                    errors.add(path)

    root = Path("./asm/")
    assert root.exists()

    recursive(root)

    LOG.debug(
        f"find_all_asm_files: found {len(files)} .s files and {len(errors)} bad files"
    )
    return files, errors


def find_unused_asm_files(non_matching, use_progress_bar=True):
    """Search for unused asm function files."""

    asm_files, error_files = find_all_asm_files()
    included_asm_files = find_used_asm_files(
        non_matching, use_progress_bar=use_progress_bar
    )

    unused_asm_files = asm_files - included_asm_files
    LOG.debug(f"find_unused_asm_files: found {len(unused_asm_files)} unused .s files")

    return unused_asm_files, error_files


def find_all_header_files():
    """Recursivly find all files in the 'include/' folder"""

    files = set()

    def recursive(parent):
        paths = sorted(
            parent.iterdir(),
            key=lambda path: (path.is_file(), path.name.lower()),
        )
        for path in paths:
            # Remove hidden files
            if path.name.startswith("."):
                continue
            if path.is_dir():
                recursive(path)
            else:
                if path.suffix == ".h":
                    files.add(path)

    root = Path("./include/")
    assert root.exists()
    recursive(root)

    LOG.debug(f"find_all_header_files: found {len(files)} .h files")
    return files


def find_all_cpp_files():
    """Recursivly find all files in the 'cpp/' folder"""

    files = set()

    def recursive(parent):
        paths = sorted(
            parent.iterdir(),
            key=lambda path: (path.is_file(), path.name.lower()),
        )
        for path in paths:
            # Remove hidden files
            if path.name.startswith("."):
                continue
            if path.is_dir():
                recursive(path)
            else:
                if path.suffix == ".cpp":
                    files.add(path)

    src_root = Path("./src/")
    libs_root = Path("./libs/")
    rel_root = Path("./rel/")
    assert src_root.exists()
    assert libs_root.exists()
    assert rel_root.exists()

    recursive(src_root)
    recursive(libs_root)
    recursive(rel_root)

    LOG.debug(f"find_all_cpp_files: found {len(files)} .cpp files")
    return files


def find_includes(lines, non_matching, ext=".s"):
    includes = set()
    for line in lines:
        key = '#include "'
        start = line.find(key)
        if start < 0:
            continue

        start += len(key)
        end = line.find('"', start)
        if end < 0:
            continue

        include_path = line[start:end]
        if include_path.endswith(ext):
            includes.add(Path(include_path))

    return includes


def find_used_asm_files(non_matching, use_progress_bar=True):

    cpp_files = find_all_cpp_files()
    includes = set()

    if use_progress_bar:
        with Progress(
            console=CONSOLE, transient=True, refresh_per_second=1
        ) as progress:
            task = progress.add_task(f"preprocessing...", total=len(cpp_files))

            for cpp_file in cpp_files:
                with cpp_file.open("r") as file:
                    includes.update(find_includes(file.readlines(), non_matching))

                progress.update(task, advance=1)
    else:
        for cpp_file in cpp_files:
            with cpp_file.open("r") as file:
                includes.update(find_includes(file.readlines(), non_matching))

    # TODO: NON_MATCHING
    LOG.debug(f"find_used_asm_files: found {len(includes)} included .s files")

    return includes


def rebuild(thread_count, include_rels):
    LOG.debug("make clean")
    with Progress(console=CONSOLE, transient=True, refresh_per_second=5) as progress:
        task = progress.add_task(f"make clean", total=1000, start=False)

        cmd = ["make", f"-j{thread_count}", "clean"]
        result = subprocess.run(
            args=cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE
        )
        LOG.debug("make clean complete")
        if result.returncode != 0:
            return False

    if include_rels:
        LOG.debug("make clean_rels")
        with Progress(
            console=CONSOLE, transient=True, refresh_per_second=5
        ) as progress:
            task = progress.add_task(f"make clean_rels", total=1000, start=False)

            cmd = ["make", f"-j{thread_count}", "clean_rels"]
            result = subprocess.run(
                args=cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE
            )
            LOG.debug("make clean_rels complete")
            if result.returncode != 0:
                return False

    LOG.debug("make main.dol")
    with Progress(console=CONSOLE, transient=True, refresh_per_second=5) as progress:
        task = progress.add_task(f"make", total=1000, start=False)

        cmd = ["make", f"-j{thread_count}", "build/dolzel2/main.dol"]
        result = subprocess.run(
            args=cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE
        )
        LOG.debug("make main.dol complete")
        if result.returncode != 0:
            return False

    if include_rels:
        LOG.debug("make RELs")
        with Progress(
            console=CONSOLE, transient=True, refresh_per_second=5
        ) as progress:
            task = progress.add_task(f"make rels", total=1000, start=False)

            cmd = ["make", f"-j{thread_count}", "rels"]
            result = subprocess.run(
                args=cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE
            )
            LOG.debug("make RELs complete")
            if result.returncode != 0:
                return False

    return True


def sha1_from_data(data):
    sha1 = hashlib.sha1()
    sha1.update(data)

    return sha1.hexdigest().upper()


def get_files_with_ext(path, ext):
    return [x for x in path.glob(f"**/*{ext}") if x.is_file()]


class CheckException(Exception):
    ...


def check_sha1(game_path, build_path, include_rels):
    if include_rels:
        rel_path = game_path.joinpath("rel/Final/Release")
        if not rel_path.exists():
            raise CheckException(f"Path not found: '{rel_path}'")

        rels_path = get_files_with_ext(rel_path, ".rel")
        rels_archive_path = game_path.joinpath("RELS.arc")
        if not rels_archive_path.exists():
            raise CheckException(f"File not found: '{rels_archive_path}'")

        LOG.debug(f"RELs Path: '{rel_path}' (found {len(rels_path)} RELs)")
        LOG.debug(f"RELs Archive Path: '{rels_archive_path}'")

    EXPECTED = {}
    EXPECTED[0] = (
        "",
        "4997D93B9692620C40E90374A0F1DBF0E4889395",
        "4997D93B9692620C40E90374A0F1DBF0E4889395",
    )

    if include_rels:
        for rel_filepath in rels_path:
            with rel_filepath.open("rb") as file:
                data = bytearray(file.read())
                yaz0_data = data
                if struct.unpack(">I", data[:4])[0] == 0x59617A30:
                    data = yaz0.decompress(io.BytesIO(data))

                rel = librel.read(data)
                EXPECTED[rel.index] = (
                    str(rel_filepath),
                    sha1_from_data(yaz0_data),
                    sha1_from_data(data),
                )

        with rels_archive_path.open("rb") as file:
            rarc = libarc.read(file.read())
            for depth, file in rarc.files_and_folders:
                if not isinstance(file, libarc.File):
                    continue

                if file.name.endswith(".rel"):
                    data = file.data
                    yaz0_data = data
                    if struct.unpack(">I", data[:4])[0] == 0x59617A30:
                        data = yaz0.decompress(io.BytesIO(data))

                    xxx_path = Path("build").joinpath(file.name)
                    with xxx_path.open("wb") as write_file:
                        write_file.write(data)

                    rel = librel.read(data)
                    EXPECTED[rel.index] = (
                        file.name,
                        sha1_from_data(yaz0_data),
                        sha1_from_data(data),
                    )

    if not build_path.exists():
        raise CheckException(f"Path not found: '{build_path}'")

    build_dol_path = build_path.joinpath("main.dol")
    if not build_dol_path.exists():
        raise CheckException(f"File not found: '{build_dol_path}'")

    CURRENT = {}
    with build_dol_path.open("rb") as file:
        data = file.read()
        CURRENT[0] = (
            str(build_dol_path),
            sha1_from_data(data),
            sha1_from_data(data),
        )

    if include_rels:
        build_rels_path = get_files_with_ext(build_path, ".rel")
        for rel_filepath in build_rels_path:
            with rel_filepath.open("rb") as file:
                data = bytearray(file.read())
                yaz0_data = data
                if struct.unpack(">I", data[:4])[0] == 0x59617A30:
                    data = yaz0.decompress(io.BytesIO(data))

                rel = librel.read(data)
                CURRENT[rel.index] = (
                    str(rel_filepath),
                    sha1_from_data(yaz0_data),
                    sha1_from_data(data),
                )

    expected_keys = set(EXPECTED.keys())
    current_keys = set(CURRENT.keys())
    match = expected_keys - current_keys
    if len(match) > 0:
        raise CheckException(
            f"Missing main.dol or RELs (expected: {len(expected_keys)}, found: {len(current_keys)})"
        )

    errors = 0
    for key in expected_keys:
        if key in current_keys:
            expected = EXPECTED[key]
            current = CURRENT[key]
            if current[2] != expected[2]:
                errors += 1
                LOG.error(f"{current[2]} {expected[2]} {current[0]} ({expected[0]})")

    if errors > 0:
        raise CheckException("NO MATCH!")

    return True


if __name__ == "__main__":
    tp()

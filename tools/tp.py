"""

tp.py - Various tools used for the zeldaret/tp project.

"""

import hashlib
import io
import os
import sys
import time
import json
import subprocess
import logging
import multiprocessing as mp
import shutil
import platform
import stat
import zipfile

from dataclasses import dataclass, field
from typing import Dict, List, Set, Tuple
from pathlib import Path


def _handle_import_error(ex: ImportError):
    MISSING_PREREQUISITES = (
        f"Missing prerequisite python module {ex}.\n"
        f"Run `python3 -m pip install --user -r tools/requirements.txt` to install prerequisites."
    )

    print(MISSING_PREREQUISITES, file=sys.stderr)
    sys.exit(1)

try:
    import click
    import libdol
    import libgithub
    import requests
    import glob

    from rich.logging import RichHandler
    from rich.console import Console
    from rich.progress import Progress
    from rich.text import Text
    from rich.table import Table
    from typing import Optional
except ImportError as ex:
    _handle_import_error(ex)


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

if sys.version_info < (3, 10):
    LOG.error("This script requires Python 3.10 or newer!")
    sys.exit(1)

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
def expected_copy(debug: bool, build_path: Path, expected_path: Path):
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


COMPILERS_TAG = "20230715"
BINUTILS_TAG = "2.42-1"
BINUTILS_ZIP = "linux-x86_64"

if platform.system() == "Windows":
    BINUTILS_ZIP = "windows-x86_64"
elif platform.system() == "Darwin":
    BINUTILS_ZIP = "macos-universal"

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
@click.option(
    "--yaz0-encoder",
    type=str,
    default="native",
    required=False,
)
@click.option("--force-download/--no-force-download")
@click.option("--skip-iso/--no-skip-iso", default=False)
def setup(debug: bool, game_path: Path, tools_path: Path, yaz0_encoder: str, force_download: bool, skip_iso: bool):
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
    text = Text("--- Fetching compiler")
    text.stylize("bold magenta")
    CONSOLE.print(text)

    compilers = tools_path.joinpath("mwcc_compiler")
    if force_download:
        shutil.rmtree(compilers)
    if not compilers.exists() or not compilers.is_dir():
        os.mkdir(compilers)
        r = requests.get(f'https://files.decomp.dev/compilers_{COMPILERS_TAG}.zip')
        z = zipfile.ZipFile(io.BytesIO(r.content))
        z.extractall(compilers)
        gc_path = compilers.joinpath("GC")

        allfiles = os.listdir(gc_path)
        for f in allfiles:
            src_path = os.path.join(gc_path, f)
            dst_path = os.path.join(compilers, f)
            shutil.move(src_path, dst_path)
        os.rmdir(gc_path)

    #
    text = Text("--- Fetching binutils")
    text.stylize("bold magenta")
    CONSOLE.print(text)

    binutils = tools_path.joinpath("binutils")
    if force_download:
        shutil.rmtree(binutils)
    if not binutils.exists() or not binutils.is_dir():
        os.mkdir(binutils)
        r = requests.get(f'https://github.com/encounter/gc-wii-binutils/releases/download/{BINUTILS_TAG}/{BINUTILS_ZIP}.zip')
        z = zipfile.ZipFile(io.BytesIO(r.content))
        z.extractall(binutils)
        if os.name == 'posix':
            subprocess.run(['chmod', '+x'] + list(binutils.glob("*")))

    #
    text = Text("--- Patching compiler")
    text.stylize("bold magenta")
    CONSOLE.print(text)

    c27 = compilers.joinpath("2.7")
    if not c27.exists() or not c27.is_dir():
        LOG.error(
            (
                f"Unable to find MWCC compiler version 2.7: missing directory '{c27}'\n"
                f"Check the README for instructions on how to obtain the compilers"
            )
        )
        sys.exit(1)

    c125 = compilers.joinpath("1.2.5")
    if not c125.exists() or not c125.is_dir():
        LOG.error(
            (
                f"Unable to find MWCC compiler version 1.2.5: missing directory '{c125}'\n"
                f"Check the README for instructions on how to obtain the compilers"
            )
        )
        sys.exit(1)

    c125n = compilers.joinpath("1.2.5n")
    if not c125n.exists() or not c125n.is_dir():
        LOG.error(
            (
                f"Unable to find patched MWCC compiler version 1.2.5n: missing directory '{c125n}'\n"
                f"Check the README for instructions on how to obtain the compilers"
            )
        )
        sys.exit(1)

    c27_lmgr326b = None
    for name in os.listdir(c27):
        if name.lower() == "lmgr326b.dll":
            c27_lmgr326b = c27.joinpath(name)
            break
    if not c27_lmgr326b or not c27_lmgr326b.is_file():
        LOG.error(
            (
                f"Unable to find 'lmgr326b.dll' in '{c27}': missing file '{c27_lmgr326b}'\n"
                f"Check the README for instructions on how to obtain the compilers"
            )
        )
        sys.exit(1)

    def copy_lmgr326b(path: Path):
        lmgr326b_cc = path.joinpath("LMGR326B.dll")
        if not lmgr326b_cc.is_file():
            LOG.debug(f"copy: '{c27_lmgr326b}', to: '{lmgr326b_cc}'")
            shutil.copy(c27_lmgr326b, lmgr326b_cc)

    copy_lmgr326b(c27)
    copy_lmgr326b(c125)
    copy_lmgr326b(c125n)

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
    c27_mwcceppc_patched = c27.joinpath("mwcceppc_modded.exe")

    def patch_compiler(src: Path, dst: Path, apply: bool):
        with src.open("rb") as src_file:
            with dst.open("wb") as dst_file:
                data = bytearray(src_file.read())
                if apply:
                    data[0x001C6A54] = 0x6D
                else:
                    data[0x001C6A54] = 0x69
                dst_file.write(data)
            if platform.system() == "Linux":
                os.chmod(dst, stat.S_IRWXU | stat.S_IRGRP | stat.S_IXGRP | stat.S_IROTH | stat.S_IXOTH)

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

    # add execute flag to compilers for WSL
    if os.name == 'posix':
        subprocess.run(['chmod', '+x'] + list(compilers.glob("*/*.exe")))

    #
    text = Text("--- Building tools")
    text.stylize("bold magenta")
    CONSOLE.print(text)
    if subprocess.run(["make", "tools"]).returncode != 0:
        LOG.error("An error occurred while running 'make tools'")
        exit(1)

    if skip_iso is False:
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
            import extract_game_assets
            extract_game_assets.extract(iso, game_path, yaz0_encoder)
        except ImportError as ex:
            _handle_import_error(ex)
        except Exception as e:
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
@click.option("--print-rels/--no-print-rels", default=True, is_flag=True)
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
def progress(debug: bool, matching: bool, format: str, print_rels: bool, build_path: Path):
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
def check(debug: bool, rels: bool, game_path: Path, build_path: Path):
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


def calculate_rel_progress(build_path: Path, matching: bool, format: str, asm_files: Set[Path], ranges: List[Tuple[int, int]]):
    results: List[ProgressGroup] = []
    start = time.time()
    rel_paths = get_files_with_ext(build_path.joinpath("rel"), ".rel")
    end = time.time()
    LOG.debug(f"get_files_with_ext: {(end - start)*1000} ms")

    start = time.time()
    from collections import defaultdict

    str_asm_rel = f"asm{os.path.sep}rel{os.path.sep}"
    range_dict = defaultdict(list)
    for file, range in zip(asm_files, ranges):
        str_file = str(file)
        if not str_file.startswith(str_asm_rel):
            continue
        rel = str_file.split(os.path.sep)[-3]
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

    results.sort(key=lambda prog: prog.name)
    return results


def calculate_dol_progress(build_path: Path, matching: bool, format: str, asm_files: Set[Path], ranges: List[Tuple[int, int]]):
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


def calculate_progress(build_path: Path, matching: bool, format: str, print_rels: bool):
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
        try:
            import git
            git_object = git.Repo().head.object
            timestamp = str(git_object.committed_date)
            git_hash = git_object.hexsha
        except ImportError:
            LOG.warning("can't import git, some fields will be missing!")
            timestamp = ""
            git_hash = ""

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
        # TODO: add dol sections instead of total dol.
        data = {
            "code": decompiled_size,
            "code/total": total_size,
            "dol": dol_progress.decompiled,
            "dol/total": dol_progress.size,
            "rels": rel_decompiled,
            "rels/total": rel_size,
        }   
        print(json.dumps(data))
    else:
        print(dol_progress.percentage)
        print(100 * (rel_decompiled / rel_size))
        print(100 * (decompiled_size / total_size))
        LOG.error("unknown format: '{format}'")


def find_function_range(asm: Path) -> Tuple[int, int]:
    with asm.open("r", encoding="utf-8") as file:
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


def find_function_ranges(asm_files: Set[Path]):
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
def remove_unused_asm_cmd(check: bool):
    result = remove_unused_asm(check)
    if check:
        if result == 0:
            print("OK")
            sys.exit(0)
        else:
            sys.exit(1)


def remove_unused_asm(check: bool):
    unused_files, error_files = find_unused_asm_files(False, use_progress_bar=not check)

    for unused_file in unused_files:
        if not check:
            unused_file.unlink()
        CONSOLE.print(f"removed '{unused_file}'")

    text = Text("    OK")
    text.stylize("bold green")
    CONSOLE.print(text)
    if check:
        text = Text("    NOTE: The was just a check run. No files were actually removed.")
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
    default=True,
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
def pull_request(debug: bool, rels: bool, thread_count: int, game_path: Path, build_path: Path):
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


def find_all_asm_files() -> Tuple[Set[Path], Set[Path]]:
    """Recursivly find all files in the 'asm/' folder"""

    files = set()
    errors = set()

    def recursive(parent: Path):
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

    # Check for all .s files in ./asm/
    root = Path("./asm/")
    assert root.exists()
    recursive(root)

    # check for .inc files in all directories
    root = Path("./")
    assert root.exists()
    recursive(root)

    LOG.debug(
        f"find_all_asm_files: found {len(files)} .s files and {len(errors)} bad files"
    )
    return files, errors


def find_unused_asm_files(non_matching: bool, use_progress_bar: bool = True):
    """Search for unused asm function files."""

    asm_files, error_files = find_all_asm_files()
    included_asm_files = find_used_asm_files(
        non_matching, use_progress_bar=use_progress_bar
    )

    unused_asm_files = asm_files - included_asm_files
    LOG.debug(f"find_unused_asm_files: found {len(unused_asm_files)} unused .s files")

    return unused_asm_files, error_files


def find_all_header_files() -> Set[Path]:
    """Recursivly find all files in the 'include/' folder"""

    files = set()

    def recursive(parent: Path):
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


def find_all_files() -> Set[Path]:
    """Recursively find all c/cpp files in '/src/', '/libs/', and '/rel/' """

    files = set()

    def recursive(parent: Path):
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
                if path.suffix == ".cpp" or path.suffix == ".c" or path.suffix == ".inc":
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

    LOG.debug(f"find_all_files: found {len(files)} .c/.cpp files")
    return files


def find_includes(lines: List[str], non_matching: bool, ext: str = ".s") -> Set[Path]:
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


def find_used_asm_files(non_matching: bool, use_progress_bar: bool = True) -> Set[Path]:
    cpp_files = find_all_files()
    includes = set()

    if use_progress_bar:
        with Progress(
            console=CONSOLE, transient=True, refresh_per_second=1
        ) as progress:
            task = progress.add_task(f"preprocessing...", total=len(cpp_files))

            for cpp_file in cpp_files:
                with cpp_file.open("r", encoding="utf-8") as file:
                    includes.update(find_includes(file.readlines(), non_matching))

                progress.update(task, advance=1)
    else:
        for cpp_file in cpp_files:
            with cpp_file.open("r", encoding="utf-8") as file:
                includes.update(find_includes(file.readlines(), non_matching))

    # TODO: NON_MATCHING
    LOG.debug(f"find_used_asm_files: found {len(includes)} included .s or .inc files")

    return includes


def rebuild(thread_count: int, include_rels: bool):
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


def get_files_with_ext(path: Path, ext: str):
    return [x for x in path.glob(f"**/*{ext}") if x.is_file()]


class CheckException(Exception):
    ...


def check_sha1(game_path: Path, build_path: Path, include_rels: bool):
    try:
        import librel
    except ImportError as ex:
        _handle_import_error(ex)

    EXPECTED = {}
    EXPECTED[0] = (
        "",
        "4997D93B9692620C40E90374A0F1DBF0E4889395",
    )

    if include_rels:
        with open('sha1sums.json') as f:
            rel_shas = json.load(f)
        for num, (name, sha) in enumerate(rel_shas.items()):
            if num == 0:
                continue
            EXPECTED[num] = (
                name,
                sha
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
        )

    if include_rels:
        build_rels_path = get_files_with_ext(build_path/"rel", ".rel")
        for rel_filepath in build_rels_path:
            with rel_filepath.open("rb") as file:
                data = bytearray(file.read())
                rel = librel.read(data)
                CURRENT[rel.index] = (
                    str(rel_filepath),
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
            if current[1] != expected[1]:
                errors += 1
                LOG.error(f"{current[1]} {expected[1]} {current[0]} ({expected[0]})")

    if errors > 0:
        raise CheckException("NO MATCH!")

    return True

#
# Github Command Helpers
#

import functools

def common_github_options(func):
    @click.option("--debug/--no-debug")
    @click.option(
        "--personal-access-token",
        help="Github Personal Access Token for authorizing API calls.",
        required=False,
        default=os.environ.get('GITHUB_TOKEN')
    )
    @click.option(
        "--owner",
        help="Github repo owner",
        required=False,
        default="zeldaret"
    )
    @click.option(
        "--repo",
        help="Github repository name",
        required=False,
        default="tp"
    )
    @click.option(
        "--state-file", 
        help="File to store the state of the issues in. Defaults to tools/projects.yml", 
        required=False,
        default="tools/pjstate.yml"
    )
    @functools.wraps(func)
    def wrapper(*args, **kwargs):
        return func(*args, **kwargs)
    return wrapper

def prereqs(owner: str, repo: str, personal_access_token: str, state_file: str):
    # Setup GraphQL client singleton
    libgithub.GraphQLClient.setup(personal_access_token)

    # Setup RepoInfo classvars
    libgithub.RepoInfo.owner = libgithub.OwnerInfo()
    libgithub.RepoInfo.owner.name = owner
    libgithub.RepoInfo.name = repo
    libgithub.RepoInfo.set_ids()

    # Load in the project state
    libgithub.StateFile.load(state_file)

def load_from_yaml(type: str, project_name: str) -> any:
    with open("./tools/projects.yml", 'r') as stream:
        try:
            import yaml

            projects_data = yaml.safe_load(stream)
            LOG.debug(f"Loaded projects.yml data: {projects_data}")

            match type:
                case "labels":
                    ret_data = libgithub.Label.get_all_from_yaml(projects_data, project_name)
                case "issues":
                    ret_data = libgithub.Issue.get_all_from_yaml(projects_data, project_name)
                case "projects":
                    ret_data = libgithub.Project.get_all_from_yaml(projects_data, project_name)
                case _:
                    LOG.error(f"Invalid type: {type}")
                    sys.exit(1)
            
            return ret_data
        except ImportError:
            LOG.error("Can't import yaml, exiting.")
            sys.exit(1)
        except yaml.YAMLError as error:
            LOG.error(f"Error loading YAML: {error}")
            sys.exit(1)

#
# Github Sync Commands
#

@tp.command(name="github-sync-labels", help="Creates all labels based on tools/projects.yml")
@common_github_options
@click.option(
    "--project", 
    help="Only sync labels for a specific project", 
    required=False,
    default=None
)
def github_sync_labels(debug: bool, personal_access_token: str, owner: str, repo: str, project: str, state_file: str):
    if debug:
        LOG.setLevel(logging.DEBUG)

    prereqs(owner, repo, personal_access_token, state_file)
    yaml_labels = load_from_yaml("labels", project)

    LOG.info("Syncing up labels")
    for label in yaml_labels:
        label.check_and_create()

@tp.command(name="github-sync-issues", help="Creates all issues and labels based on tools/projects.yml")
@common_github_options
@click.option(
    "--project", 
    help="Only sync labels for a specific project", 
    required=False,
    default=None
)
def github_sync_issues(debug: bool, personal_access_token: str, owner: str, repo: str, project: str, state_file: str):
    if debug:
        LOG.setLevel(logging.DEBUG)

    prereqs(owner,repo,personal_access_token, state_file)
    yaml_issues = load_from_yaml("issues", project)

    LOG.info("Syncing up issues")
    for issue in yaml_issues:
        issue.check_and_create()

@tp.command(name="github-sync-projects", help="Creates all projects, issues and labels based on tools/projects.yml")
@common_github_options
@click.option(
    "--project", 
    help="Only sync labels for a specific project", 
    required=False,
    default=None
)
def github_sync_projects(debug: bool, personal_access_token: str, owner: str, repo: str, project: str, state_file: str):
    if debug:
        LOG.setLevel(logging.DEBUG)

    prereqs(owner, repo, personal_access_token, state_file)
    yaml_projects = load_from_yaml("projects", project)

    LOG.info("Syncing up projects")
    for project in yaml_projects:
        project.check_and_create()

@tp.command(name="github-update-issues", help="Checks all issues and updates their status and assigness.")
@common_github_options
@click.option(
    '--filename','filenames',
    help="Filename(s) used to look for and update issues.",
    multiple=True, 
    type=click.Path(exists=True)
)
@click.option(
    '--author',
    multiple=True,
    help="Author(s) to assign issues to.",
    default=None
)
@click.option(
    '--all',
    help="Check all items in every project and update their status.",
    is_flag=True,
    default=False
)
@click.option(
    '--clang-lib-path',
    help="Path to libclang.so",
    default="/usr/lib/x86_64-linux-gnu/libclang-16.so"
)
def github_update_issues(debug: bool, personal_access_token: str, owner: str, repo: str, filenames: Tuple[click.Path], all: bool, author: str, clang_lib_path: str, state_file: str):
    if debug:
        LOG.setLevel("DEBUG")

    if author == () and all == False:
        LOG.error("Author is required when --all is not set. Please set it using the --author argument.")
        sys.exit(1)

    prereqs(owner, repo, personal_access_token, state_file)

    issues = libgithub.StateFile.data.get('issues')
    projects = libgithub.StateFile.data.get('projects')

    filenames_list = list(filenames)
    author_list = list(author)

    if len(author_list) == 0:
        author_list = [""] * len(filenames_list)

    # If all flag is set, check all issue file paths in state file
    if all:
        for issue in issues:
            filenames_list.append(issue["file_path"])

    import classify_tu, clang, itertools

    # Set the clang library file
    clang.cindex.Config.set_library_file(clang_lib_path)

    for filename,author in itertools.zip_longest(filenames_list,author_list):
        LOG.info(f"Classifying TU {filename}")
        status = classify_tu.run(filename)

        LOG.debug(f"Classification result: {status}")
        if status == "error":
            LOG.error(f"Error classifying TU {filename}")
            sys.exit(1)

        # Find the matching issue_id for the filename
        issue_id = None
        for issue in issues:
            if issue["file_path"] == filename:
                issue_id = issue["id"]
                issue_title = issue["title"]
                break

        if issue_id is None:
            LOG.error(f"Couldn't find issue_id for {filename}. Run github-sync-issues first.")
            sys.exit(1)

        # Find the matching project_id, item_id and status_field for the issue_id
        project_id = None
        for project in projects:
            for item in project["items"]:
                if item["issue_id"] == issue_id:
                    project_id = project["id"]
                    item_id = item["item_id"]
                    status_field = project["status_field"]
                    break

        if project_id is None:
            LOG.error(f"Couldn't find project_id associated with {filename}. Run github-sync-projects first.")
            sys.exit(1)            

        libgithub.Project(id=project_id,status_field=status_field).set_status_for_item(item_id, status)
        github_issue = libgithub.Issue(id=issue_id,title=issue_title)

        # Add the author as an assignee if it was passed in
        if author is not None:
            # Find the matching author
            author_user = libgithub.User(name=author)
            author_user.get_id()

            # Add the author as an assignee    
            assignees = github_issue.get_all_assignees()
            assignees.append(author_user)
            github_issue.add_assignees(assignees)

        # Close the issue if status is done
        if status == "done":
            github_issue.set_closed()

#
# Github Clean Commands
#

@tp.command(name="github-clean-labels", help="Delete all labels for a given owner/repository.")
@common_github_options
def github_clean_labels(debug: bool, personal_access_token: str, owner: str, repo: str, state_file: str) -> None:
    if debug:
        LOG.setLevel("DEBUG")

    LOG.warning(f"This command will completely delete all labels for {owner}/{repo}. Are you sure you want to do this? (y/n)")
    confirmation = input().lower()

    if confirmation == 'y':
        prereqs(owner,repo,personal_access_token, state_file)
        libgithub.Label.delete_all()
    else:
        sys.exit(0)

@tp.command(name="github-clean-issues", help="Delete all issues for a given owner/repository.")
@common_github_options
def github_clean_issues(debug: bool, personal_access_token: str, owner: str, repo: str, state_file: str) -> None:
    if debug:
        LOG.setLevel("DEBUG")

    LOG.warning(f"This command will completely delete all issues for {owner}/{repo}. Are you sure you want to do this? (y/n)")
    confirmation = input().lower()

    if confirmation == 'y':
        prereqs(owner,repo,personal_access_token, state_file)
        libgithub.Issue.delete_all()
    else:
        sys.exit(0)

@tp.command(name="github-clean-projects", help="Delete all projects for a given owner/repository.")
@common_github_options
def github_clean_projects(debug: bool, personal_access_token: str, owner: str, repo: str, state_file: str) -> None:
    if debug:
        LOG.setLevel("DEBUG")

    LOG.warning(f"This command will completely delete all projects for {owner}/{repo}. Are you sure you want to do this? (y/n)")
    confirmation = input().lower()

    if confirmation == 'y':
        prereqs(owner,repo,personal_access_token, state_file)
        libgithub.Project.delete_all()
    else:
        sys.exit(0)

#
# Progress Command Helpers
#

def copy_progress_script() -> None:
    file_path = './tools/tp.py'
    destination_path = './tools/tp_copy.py'

    if not os.path.exists(destination_path):
        shutil.copyfile(file_path, destination_path)

def make_progress_dir() -> None:
    progress_dir = './progress'

    if not os.path.exists(progress_dir):
        os.mkdir(progress_dir)

def generate_progress(commit: str, wibo_path: Optional[str] = None) -> None:
    git_show_output = subprocess.check_output(['git', 'show', '-s', '--format=%ct', commit]).decode('ascii').strip()
    commit_timestamp = git_show_output

    commit_string = f'progress/{commit_timestamp}_{commit}.json'

    if os.path.exists(commit_string):
        LOG.info(f"File {commit_string} already exists, skipping.")
        return

    process = subprocess.Popen(["make", "clean_all"], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()
    if process.returncode != 0:
        LOG.error(f"Error during make clean_all: {stderr.decode()}")
        return
    
    LOG.debug(f"stdout: {stdout.decode()}")

    make_command = ["make", "all", "rels", f"-j{os.cpu_count()}"]
    if wibo_path:
        make_command.append(f"WINE={wibo_path}")
    process = subprocess.Popen(make_command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()

    if process.returncode != 0:
        LOG.error(f"Error during make all rels: {stderr.decode()}")
        return

    LOG.debug(f"stdout: {stdout.decode()}")
    command = ["python", "./tools/tp_copy.py", "progress", "-f", "JSON"]

    with open(commit_string, 'w') as outfile:
        process = subprocess.Popen(command, stdout=outfile, stderr=subprocess.PIPE)
        stdout, stderr = process.communicate()

        if process.returncode != 0:
            LOG.error(f"Error: {stderr.decode()}")
        
        LOG.debug(f"stdout: {stdout.decode()}")

def checkout_and_run(repo_path: str, start_commit_hash: str, wibo_path: Optional[str] = None) -> None:
    try:
        import git

        repo = git.Repo(repo_path)
        head_commit = repo.head.commit
    except ImportError:
        LOG.error("Can't import git, exiting.")
        sys.exit(1)

    copy_progress_script()
    make_progress_dir()

    try:
        commits = list(repo.iter_commits(f'{start_commit_hash}..{head_commit.hexsha}'))
        commits.append(repo.commit(start_commit_hash))

        for commit in commits[::-1]:  
            LOG.info(f"Checking out commit {commit.hexsha}")
            repo.git.checkout(commit.hexsha)
            generate_progress(commit.hexsha, wibo_path)
    except Exception as e:
        LOG.error(f"Error occurred: {e}")
    finally:
        LOG.debug(f"Checking out origin head commit: {head_commit.hexsha}")
        repo.git.checkout(head_commit.hexsha)

#
# Progress Commands
#

@tp.command(name="progress-history")
@click.option("--debug/--no-debug", default=False)
@click.option("--repo-path", default=".", required=False, help="Path to your git repository. Defaults to current directory.")
@click.option("--start-commit", default="bc428f7f65b97cc9035aed1dc1b71c54ff2e6c3d", required=False, help="Start commit hash. If none supplied, will start at the commit where Julgodis added the progress script.")
@click.option("--wibo-path", default=None, required=False, help="Path to wibo build. If none supplied, the default Wine will be used.")
def progress_history(debug, repo_path, start_commit, wibo_path):
    if debug:
        LOG.setLevel(logging.DEBUG)

    LOG.warning(f"This command will generate the progress for every commit since {start_commit}. This could take many hours to complete. Are you sure you want to do this? (y/n)")
    confirmation = input().lower()

    if confirmation == 'y':
        checkout_and_run(repo_path, start_commit, wibo_path)
    else:
        sys.exit(0)

def get_git_commit_timestamp() -> int:
    return int(subprocess.check_output(['git', 'show', '-s', '--format=%ct']).decode('ascii').rstrip())

def get_git_commit_sha() -> str:
    return subprocess.check_output(['git', 'rev-parse', 'HEAD']).decode('ascii').strip()

def generate_url(base_url: str, project: str, version: str) -> str:
    url_components = [base_url.rstrip('/'), 'data']

    for arg in [project, version.replace('.', '-')]:
        if arg != "":
            url_components.append(arg)

    return str.join('/', url_components) + '/'

@tp.command(name="upload-progress")
@click.option("--debug/--no-debug")
@click.option('-b', '--base_url', required=True, help='API base URL')
@click.option('-a', '--api_key', required=False, default=os.environ.get('PROGRESS_API_KEY'), help='API key (env var PROGRESS_API_KEY)')
@click.option('-p', '--project', required=True, help='Project slug')
@click.option('-v', '--version', required=True, help='Version slug')
@click.argument('input', type=click.Path(exists=True))
def upload_progress(debug: bool, base_url: str, api_key: str, project: str, version: str, input: str) -> None:
    if debug:
        LOG.setLevel(logging.DEBUG)
    
    if not api_key:
        raise click.UsageError("API key required")

    url = generate_url(base_url, project, version)

    entries = []

    # Check if input is a directory
    if os.path.isdir(input):
        LOG.debug(f'Loading all JSON files in directory {input}')

        # Read all JSON files in the directory
        json_files = glob.glob(os.path.join(input, "*.json"))

        for json_file in json_files:
            # Extract timestamp and commit SHA from filename
            filename = Path(json_file).stem
            parts = filename.split('_')
            
            if len(parts) != 2 or not parts[0].isdigit() or len(parts[1]) != 40:
                LOG.error(f"Filename '{filename}' is not in the correct format. When supplying an entire directory with JSON files in it, the filenames need to be in the format: '<unix_timestamp>_<git_sha>.json' in order for Frogress to properly understand the data.")
                sys.exit(1)
            
            timestamp, git_hash = parts

            with open(json_file, "r") as f:
                data = json.load(f)
                entries.append({
                    "timestamp": int(timestamp),
                    "git_hash": git_hash,
                    "categories": {
                        "default": data,
                    },
                })
    else:
        # Process a single JSON file
        with open(input, "r") as f:
            LOG.debug(f'Loading single JSON file {f.name}')
            data = json.load(f)
            entries.append({
                "timestamp": get_git_commit_timestamp(),
                "git_hash": get_git_commit_sha(),
                "categories": {
                    "default": data,
                },
            })

    for entry in entries:
        LOG.info(f"Publishing entry to {url}")
        LOG.debug(f"Entry: {entry}")
        data = {
            "api_key": api_key,
            "entries": [entry],  # only send current entry
        }
        try:
            r = requests.post(url, json=data)
            r.raise_for_status()
        except requests.exceptions.HTTPError as err:
            LOG.error(f"HTTP request failed: {err}")
            exit(1)


if __name__ == "__main__":
    tp()

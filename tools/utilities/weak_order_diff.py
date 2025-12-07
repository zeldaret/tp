#!/usr/bin/env python3

from pathlib import Path
import re
import subprocess
from argparse import ArgumentParser

def get_symbols(o_path: Path, diff_data: bool):
    output = subprocess.check_output(["readelf", "-Ws", o_path]).decode("ascii")
    symbols = []
    for line in output.split("\n")[3:]:
        if line == "":
            continue
        words = line.split()
        if len(words) == 7 and words[-1] == "UND":
            continue
        _, offset, size, sym_type, scope, vis, section_index, name = words

        if diff_data:
            # Only diff data.
            if sym_type == "FUNC":
                continue
            if sym_type in ["FILE", "NOTYPE", "SECTION"]:
                continue
            if vis == "HIDDEN":
                continue
            if re.search(r"^@\d+$", name):
                continue
            if re.search(r"^lbl_[0-9a-f]+_(?:data|bss)_[0-9a-f]+$", name):
                continue
            match = re.search(r"^(\S+)\$\d+$", name)
            if match:
                name = match.group(1)
        else:
            # Only diff functions.
            if sym_type != "FUNC":
                continue
            if vis == "HIDDEN":
                continue

        symbols.append((sym_type, int(section_index), int(offset, 16), name))

    symbols.sort()
    symbol_names = [sym[-1] for sym in symbols]
    return symbol_names


def print_symbols_with_unmatched_order_for_object(relative_o_path: str, version: str, diff_data: bool):
    target_o = Path("build") / version / "obj" / relative_o_path
    base_o = Path("build") / version / "src" / relative_o_path
    if not target_o.exists():
        rel_name = relative_o_path.split("/")[-1].split(".")[0]
        target_o = Path("build") / version / rel_name / "obj" / relative_o_path

    subprocess.check_output(["ninja", base_o])

    target_symbols = get_symbols(target_o, diff_data)
    base_symbols = get_symbols(base_o, diff_data)
    target_symbols_set = set(target_symbols)
    base_symbols = [sym for sym in base_symbols if sym in target_symbols_set]
    base_idx = 0
    matched_count = 0
    unmatched_count = 0
    for target_sym in target_symbols:
        if base_idx == len(base_symbols):
            base_sym = None
        else:
            base_sym = base_symbols[base_idx]

        if target_sym == base_sym:
            base_idx += 1
            matched_count += 1
        else:
            base_idx = base_symbols.index(target_sym)
            base_idx += 1
            unmatched_count += 1
            print(target_sym)

    print("====================================")
    print("Number of order differences:", unmatched_count)


def main():
    parser = ArgumentParser(description="Print differences in weak function order for an object.")
    parser.add_argument(
        "o_path",
        type=str,
        default="d/actor/d_a_alink.o",
        nargs='?',
        help="""relative path to the object file to diff (e.g. d/actor/d_a_alink.o).""",
    )
    parser.add_argument(
        "-v",
        "--version",
        type=str,
        default="GZ2E01",
        help="version to build",
    )
    parser.add_argument(
        "--data",
        action="store_true",
        help="""diffs data instead of functions.""",
    )
    args = parser.parse_args()

    print_symbols_with_unmatched_order_for_object(args.o_path, args.version, args.data)

if __name__ == "__main__":
    main()

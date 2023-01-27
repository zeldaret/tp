#!/usr/bin/env python3
# borrowed from prime-decomp
import argparse
import os
from platform import uname
from typing import List

if os.name != 'nt':
    wineprefix = os.environ.get('WINEPREFIX', os.path.join(os.environ['HOME'], '.wine'))
    winedevices = os.path.join(wineprefix, 'dosdevices')


def in_wsl() -> bool:
    # wsl1 has Microsoft, wsl2 has microsoft-standard
    release = uname().release
    return 'microsoft-standard' in release or 'Microsoft' in release


def convert_path(path: str) -> str:
    # lowercase drive letter
    path = path[0].lower() + path[1:]
    if os.name == 'nt':
        return path.replace('\\', '/')
    elif path[0] == 'z':
        # shortcut for z:
        return path[2:].replace('\\', '/')
    elif in_wsl():
        if path.startswith(r'\\wsl'):
            # first part could be wsl$ or wsl.localhost
            pos = path.find('\\', 2)
            pos = path.find('\\', pos + 1)
            path = path[pos:]
            return path.replace('\\', '/')
        else:
            path = path[0:1] + path[2:]
            return os.path.join('/mnt', path.replace('\\', '/'))
    else:
        # use $WINEPREFIX/dosdevices to resolve path
        return os.path.realpath(os.path.join(winedevices, path.replace('\\', '/')))


def import_d_file(in_file: str) -> str:
    out_lines: List[str] = []

    with open(in_file, 'r') as file:
        it = iter(file)
        line = next(it)
        if line.endswith(' \\\n'):
            out_lines.append(line[:-3].replace('\\', '/') + " \\\n")
        else:
            out_lines.append(line.replace('\\', '/'))

        headers: List[str] = []
        for line in it:
            suffix = ''
            if line.endswith(' \\\n'):
                suffix = ' \\'
                path = line.lstrip()[:-3]
            else:
                path = line.strip()

            path = convert_path(path)
            headers.append(path)
            out_lines.append(f"\t{path}{suffix}\n")
        # the metrowerks compiler doesn't support -MP
        out_lines.extend([f'{header}:\n' for header in headers])

    return ''.join(out_lines)


def main():
    parser = argparse.ArgumentParser(
        description="""Transform a .d file from Wine paths to normal paths"""
    )
    parser.add_argument(
        "d_file",
        help="""Dependency file in""",
    )
    parser.add_argument(
        "d_file_out",
        help="""Dependency file out""",
    )
    args = parser.parse_args()

    output = import_d_file(args.d_file)

    with open(args.d_file_out, "w", encoding="UTF-8") as f:
        f.write(output)


if __name__ == "__main__":
    main()

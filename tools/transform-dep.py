#!/usr/bin/env python3
# borrowed from prime-decomp
import argparse
import os
from platform import uname

if os.name != 'nt':
    wineprefix = os.environ.get('WINEPREFIX', os.path.join(os.environ['HOME'], '.wine'))
    winedevices = os.path.join(wineprefix, 'dosdevices')

def in_wsl() -> bool:
    return 'microsoft-standard' in uname().release

def import_d_file(in_file) -> str:
    out_lines = []

    with open(in_file) as file:
        for idx, line in enumerate(file):
            if idx == 0:
                if line.endswith(' \\\n'):
                    out_lines.append(line[:-3].replace('\\', '/') + " \\\n")
                else:
                    out_lines.append(line.replace('\\', '/'))
            else:
                suffix = ''
                if line.endswith(' \\\n'):
                    suffix = ' \\'
                    path = line.lstrip()[:-3]
                else:
                    path = line.strip()
                # lowercase drive letter
                path = path[0].lower() + path[1:]
                if os.name == 'nt':
                    path = path.replace('\\', '/')
                elif path[0] == 'z':
                    # shortcut for z:
                    path = path[2:].replace('\\', '/')
                elif in_wsl():
                    path = path[0:1] + path[2:]
                    path = os.path.join('/mnt', path.replace('\\', '/'))
                else:
                    # use $WINEPREFIX/dosdevices to resolve path
                    path = os.path.realpath(os.path.join(winedevices, path.replace('\\', '/')))
                out_lines.append(f"\t{path}{suffix}\n")

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
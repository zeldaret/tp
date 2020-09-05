# The Legend of Zelda: Twilight Princess

This repo contains a WIP decompilation of The Legend of Zelda: Twilight Princess (GCN USA).

It builds the following DOL:

main.dol - `sha1: 4997D93B9692620C40E90374A0F1DBF0E4889395`

And will eventually build all the [RELs](./rels_sha1.md).

## Windows Prerequisites

1. Download and run the latest release of the [Windows devkitpro installer](https://github.com/devkitPro/installer/releases)
2. Run the executable located at `devkitPro\msys2\msys2.exe`
3. Update pacman by running the following command: `pacman -Syu`
4. Install the necessary dependencies by running the following command: `pacman -S python3-pip base-devel gcc vim cmake`
5. Change to the directory of where you cloned this repository and you are ready to build!

## Build Instructions

1. Obtain a clean DOL of TP (GCN USA) and place it at the root of the repo and name it `baserom.dol`.
2. Obtain a copy of the MWCC PowerPC (from GC CW 3.0) and place it in tools/mwcc_compiler/3.0/ folder in tools/. (NOTE: This compiler's executables [mwcceppc.exe mwasmeppc.exe and mwldeppc.exe] can be installed with Codewarrior 3.0 for Gamecube, but no license or crack is provided with this project. If you can't find it on your own just DM me Pheenoh#0001).
4. Run `make` at the root of the repo

## Contributions

Contributions and PRs are welcome.
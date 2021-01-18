# The Legend of Zelda: Twilight Princess

This repo contains a WIP decompilation of The Legend of Zelda: Twilight Princess (GCN USA).

It builds the following DOL:

main.dol - `sha1: 4997D93B9692620C40E90374A0F1DBF0E4889395`

And will eventually build all the [RELs](./docs/rels_sha1.md).

## Windows Prerequisites

1. Download and run the latest release of the [Windows devkitpro installer](https://github.com/devkitPro/installer/releases)
2. Run the executable located at `devkitPro\msys2\msys2.exe`
3. Update pacman by running the following command: `pacman -Syu`
4. Install the necessary dependencies by running the following command: `pacman -S python3-pip base-devel gcc vim cmake`
5. Change to the directory of where you cloned this repository and you are ready to build!

## Build Instructions

1. Obtain a clean DOL of TP (GCN USA) and place it at the root of the repo and name it `baserom.dol`.
2. Obtain a copy of the MWCC PowerPC compiler (version 2.7 to be exact). See below for a link to our Discord server which has the CodeWarrior compilers pinned in the #tp-decomp channel.
3. Run `make` at the root of the repo.

## Contributions

All contributions are welcome. This is a group effort, and even small contributions can make a difference. Some tasks also don't require much knowledge to get started.

Most discussions happen on our [Discord Server](https://discord.zelda64.dev/), where you are welcome to ask if you need help getting started, or if you have any questions regarding this project and other decompilation projects.
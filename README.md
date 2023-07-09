# The Legend of Zelda: Twilight Princess ![Code Progress] ![Dol Progress] ![Rels Progress]
[Code Progress]: https://img.shields.io/endpoint?label=Code&url=https%3A%2F%2Fprogress.deco.mp%2Fdata%2Ftwilightprincess%2Fgcn_usa%2Fdefault%2F%3Fmode%3Dshield%26measure%3Dcode
[Dol Progress]: https://img.shields.io/endpoint?label=Dol&url=https%3A%2F%2Fprogress.deco.mp%2Fdata%2Ftwilightprincess%2Fgcn_usa%2Fdefault%2F%3Fmode%3Dshield%26measure%3Ddol
[Rels Progress]: https://img.shields.io/endpoint?label=Rels&url=https%3A%2F%2Fprogress.deco.mp%2Fdata%2Ftwilightprincess%2Fgcn_usa%2Fdefault%2F%3Fmode%3Dshield%26measure%3Drels
This repo contains a WIP decompilation of The Legend of Zelda: Twilight Princess (GCN USA).

<!--ts-->
* [Progress](./Progress.md)
* [Project Setup](#project-setup)
* [Building The Game](#building-the-game)  
* [Clean Directories](#clean-directories)
* [Project Overview](#project-overview)
* [Contributing](./docs/Contributing.md)
* [FAQ](https://zelda64.dev/games/tp)
        
<!--te-->

Project Setup
=================

1. Clone down project

```bash
git clone https://github.com/zeldaret/tp
```

2. Place a copy of NTSC-U GCN Twilight Princess in the root directory and call it `gz2e01.iso` (find this on your own)

3. Then run the setup script

```bash
./tp setup
```

Building The Game
-----

1. To build a playable game, complete the [Project Setup](#project-setup) steps, then run

```bash
make game
```

The completed build is under `build/dolzel2/game/sys/main.dol`

Build DOL

```bash
make
```

(Note that any time you run make you can add the -j# argument where # is the amount of threads your system has in order to greatly speed up build times)

Build RELs

```bash
make rels
```

The completed RELs will be under `build/dolzel2/rel`

Extract Game Assets

```bash
make assets
```

Create Expected Directory

1. Run `make`
2. Run:

```bash
./tp expected
```


Clean Directories
-----

Clean RELs

```bash
make clean_rels
```

Clean Game Directory

```bash
make clean_game
```

Clean Build Directory

```bash
make clean_all
```

Clean Dol

```bash
make clean
```


Project Overview
=================
```
tp/
├── .github          # Github actions for this project.
├── asm              # The assembly for unmatched functions.
├── defs             # Python modules used by dol2asm.
├── docs             # Notes and documentation about this project.
├── include          # Header files used by this project.
├── libs             # Source code for the libraries based on the symbol map.
├── rel              # Source code for the game RELs.
├── src              # Source code for the main game.
├── tools            # Various tools to support the project.
├── .clang-format    # Clang format file.
├── .gitignore       # Files/folders to ignore changes to when making commits.
├── Doxyfile         # Doxygen configuration file.
├── Makefile         # Makefile for the project containing various targets.
├── Progress.md      # Markdown file that displays the current progress of the project.
├── README.md        # The file you're currently reading.
├── diff.py          # Python script to diff two functions.
├── diff_settings.py # Settings for the diff.py script.
├── dolzel2.sha1     # SHA1 of the dol.
├── include_link.mk  # Makefiles to include in the main Makefile.
├── obj_files.mk     # Object files to include in the main Makefile.
└── tp               # Bash script used to call the main tp python script in tools directory.
```

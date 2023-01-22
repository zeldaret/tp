# The Legend of Zelda: Twilight Princess

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

2. Setup compiler directory

```bash
mkdir -p tools/mwcc_compiler/
```

3. Download [GC_WII_COMPILERS.zip](https://cdn.discordapp.com/attachments/727918646525165659/917185027656286218/GC_WII_COMPILERS.zip).

4. Extract `GC_COMPILERS.zip` into the previously created `mwcc_compiler` directory

```bash
unzip GC_COMPILERS.zip -d tools/mwcc_compiler/
```

5. Place a copy of NTSC-U GCN Twilight Princess in the root directory and call it `gz2e01.iso` (find this on your own)

6. Setup the project

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
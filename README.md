# The Legend of Zelda: Twilight Princess <br /> ![Code Progress] ![Dol Progress] ![Rels Progress]
[Code Progress]: https://img.shields.io/endpoint?label=Code&url=https%3A%2F%2Fprogress.deco.mp%2Fdata%2Ftwilightprincess%2Fgcn_usa%2Fdefault%2F%3Fmode%3Dshield%26measure%3Dcode
[Dol Progress]: https://img.shields.io/endpoint?label=Dol&url=https%3A%2F%2Fprogress.deco.mp%2Fdata%2Ftwilightprincess%2Fgcn_usa%2Fdefault%2F%3Fmode%3Dshield%26measure%3Ddol
[Rels Progress]: https://img.shields.io/endpoint?label=Rels&url=https%3A%2F%2Fprogress.deco.mp%2Fdata%2Ftwilightprincess%2Fgcn_usa%2Fdefault%2F%3Fmode%3Dshield%26measure%3Drels

This repo contains a WIP decompilation of The Legend of Zelda: Twilight Princess (GCN USA).

More information about the project can be found here: https://zsrtp.link  

<!--ts-->
* [Progress](https://zsrtp.link/progress)
* [Project Setup](https://zsrtp.link/contribute/installation#set-up-dependencies)
* [Building The Game](https://zsrtp.link/contribute/installation#building)
* [Cleanup](https://zsrtp.link/contribute/installation#cleanup)
* [Contributing](https://zsrtp.link/contribute)
* [FAQ](https://zsrtp.link/aboutp)
        
<!--te-->

Project Overview
=================
```
tp/
├── .devcontainer    # Files required to use a container as a full-feature dev environment in vscode (optional).
├── .github          # Github actions and PR templates for this project.
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
├── asmdiff.sh       # Bash script to diff two functions using objdump and diff based on their input addresses.
├── diff.py          # Python script to diff two functions.
├── diff_settings.py # Settings for the diff.py script.
├── dolzel2.sha1     # SHA1 of the dol.
├── include_link.mk  # Makefiles to include in the main Makefile.
├── makewibo.sh      # Bash script used with objdiff to force it to build with wibo.
├── obj_files.mk     # Object files to include in the main Makefile.
├── sha1sums.json    # JSON file containing SHA1 checksums of the DOL and RELs.
└── tp               # Bash script used to call the main tp python script in tools directory.
```

The Legend of Zelda: Twilight Princess  
[![Build Status]][actions] [![Code Progress]][progress] [![DOL Progress]][progress] [![RELs Progress]][progress] [![Discord Badge]][discord]
=============

[Build Status]: https://github.com/zeldaret/tp/actions/workflows/build.yml/badge.svg
[actions]: https://github.com/zeldaret/tp/actions/workflows/build.yml
[Code Progress]: https://decomp.dev/zeldaret/tp.svg?mode=shield&category=all&measure=code&label=Code
[DOL Progress]: https://decomp.dev/zeldaret/tp.svg?mode=shield&category=dol&measure=code&label=DOL
[RELs Progress]: https://decomp.dev/zeldaret/tp.svg?mode=shield&category=modules&measure=code&label=RELs
[progress]: https://decomp.dev/zeldaret/tp
[Discord Badge]: https://img.shields.io/discord/688807550715560050?color=%237289DA&logo=discord&logoColor=%23FFFFFF
[discord]: https://discord.com/invite/DqwyCBYKqf

A work-in-progress decompilation of The Legend of Zelda: Twilight Princess (GCN USA).

This repository does **not** contain any game assets or assembly whatsoever. An existing copy of the game is required.

More information about the project can be found here: https://zsrtp.link  

<!--ts-->
* [Progress](https://zsrtp.link/progress)
* [Dependencies](#dependencies)
* [Building](#building)
* [Diffing](#diffing)
* [Contributing](https://zsrtp.link/contribute)
* [FAQ](https://zsrtp.link/about)

Dependencies
============

Windows
--------

On Windows, it's **highly recommended** to use native tooling. WSL or msys2 are **not** required.  
When running under WSL, [objdiff](#diffing) is unable to get filesystem notifications for automatic rebuilds.

- Install [Python](https://www.python.org/downloads/) and add it to `%PATH%`.
  - Also available from the [Windows Store](https://apps.microsoft.com/store/detail/python-311/9NRWMJP3717K).
- Download [ninja](https://github.com/ninja-build/ninja/releases) and add it to `%PATH%`.
  - Quick install via pip: `pip install ninja`

macOS
------

- Install [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages):

  ```sh
  brew install ninja
  ```

- Install [wine-crossover](https://github.com/Gcenx/homebrew-wine):

  ```sh
  brew install --cask --no-quarantine gcenx/wine/wine-crossover
  ```

After OS upgrades, if macOS complains about `Wine Crossover.app` being unverified, you can unquarantine it using:

```sh
sudo xattr -rd com.apple.quarantine '/Applications/Wine Crossover.app'
```

Linux
------

- Install [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages).
- For non-x86(_64) platforms: Install wine from your package manager.
  - For x86(_64), [wibo](https://github.com/decompals/wibo), a minimal 32-bit Windows binary wrapper, will be automatically downloaded and used.

Building
========

- Clone the repository:

  ```sh
  git clone https://github.com/zeldaret/tp.git
  ```

- Copy your disc image to `orig/GZ2E01`.  
  Supported formats: ISO (GCM), RVZ, WIA, WBFS, CISO, NFS, GCZ, TGC.
  - To save space, extract the disc image and keep only the following files:
    - `sys/main.dol`
    - `files/RELS.arc`
    - `files/rel/**/*.rel`

- Configure:

  ```sh
  python configure.py
  ```

  To use a version other than `GZ2E01` (USA), specify it with `--version`.
- Build:

  ```sh
  ninja
  ```

Diffing
=======

Once the initial build succeeds, an `objdiff.json` should exist in the project root.

Download the latest release from [encounter/objdiff](https://github.com/encounter/objdiff). Under project settings, set `Project directory`. The configuration should be loaded automatically.

Select an object from the left sidebar to begin diffing. Changes to the project will rebuild automatically: changes to source files, headers, `configure.py`, `splits.txt` or `symbols.txt`.

![](assets/objdiff.png)

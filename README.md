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

## Twilight Princess Ultimate Edition

**Twilight Princess Ultimate Edition** is a modified version that implements a **deltatime-based physics system**, decoupling game logic from the framerate to allow the game to run at 60fps (and theoretically higher framerates like 120fps/144fps) while maintaining vanilla gameplay behavior.

### Key Features:
- **Root-level scaling approach**: Gravity and velocity are scaled at their source points for clean, maintainable code
- **Frame-rate independent physics**: All movement, jumping, gravity, and acceleration work identically at any framerate
- **Vanilla-accurate behavior**: Physics match the original 30fps game exactly - same jump heights, distances, and timings
- **Dynamic deltatime system**: Automatically adapts to the current framerate without hardcoding

For complete technical documentation, see [Current 60fps Documentation.txt](Current%2060fps%20Documentation.txt).  

<!--ts-->
* [Progress](https://zsrtp.link/progress)
* [60fps Build Instructions](#60fps-build-instructions)
* [Dependencies](#dependencies)
* [Building](#building)
* [Diffing](#diffing)
* [Contributing](https://zsrtp.link/contribute)
* [FAQ](https://zsrtp.link/about)

60fps Build Instructions
=========================

This fork includes a convenient batch file for Windows users to build and launch the game with 60fps modifications.

### Prerequisites
1. Follow the standard [Dependencies](#dependencies) setup below
2. Ensure you have Dolphin Emulator installed

### Easy Setup (Recommended for First-Time Users)

<img src="Icon.png" alt="Setup Icon" width="64" height="64">

**Quick Start:** Double-click `Setup.exe` in the root directory!

Or run the Python script directly:
```batch
python setup/setup_60fps.py
```

The GUI will:
1. Check and install Python if needed (using `python64.exe` on Windows)
2. Guide you to select your USA Twilight Princess ISO (GZ2E01)
3. Automatically copy it to `orig/GZ2E01/`
4. Optionally configure your Dolphin emulator path
5. Set the output ISO build location
6. Install all required dependencies (ninja, gclib)
7. Configure Dolphin settings (if Dolphin path provided):
   - Set default ISO path to the build directory
   - Enable CPU clock override at 200% for optimal 60fps performance
8. Run the initial configuration
9. Launch the build process

After the initial setup, you can simply run `build_tp.bat` for future builds.

### Manual Setup

1. **Edit build_tp.bat** to match your system paths:
   - Open `build_tp.bat` in a text editor
   - Update the Dolphin path (line ~3):
     ```batch
     set DOLPHIN_PATH=C:\Path\To\Your\Dolphin\Dolphin.exe
     ```
   - Update the ISO output path if needed (line ~4):
     ```batch
     set ISO_PATH=build\GZ2E01\framework.iso
     ```

2. **Build and Run**:
   - Simply run `build_tp.bat`
   - The script will:
     - Compile the modified game code with ninja
     - Build the ISO from the compiled binaries
     - Launch Dolphin with the new ISO
     - Display any errors if the build fails

### Manual Build (Advanced)
If you prefer to build manually or are not on Windows:
```sh
# Build the modified code
ninja

# The output ISO will be in build/GZ2E01/framework.iso
# Launch with your emulator of choice
```

For detailed information about the 60fps physics modifications, see [Current 60fps Documentation.txt](Current%2060fps%20Documentation.txt).

### Building the Setup GUI (Optional)

To create standalone executables of the setup GUI:

**Windows (.exe):**
```batch
cd setup
build_gui.bat
```
Output: `setup\dist\TP_60fps_Setup.exe`

**Linux (AppImage):**
```bash
cd setup
chmod +x build_gui_linux.sh
./build_gui_linux.sh
```
Output: `setup/TP_60fps_Setup-x86_64.AppImage`

Both require PyInstaller, which will be installed automatically if not present.

**Note:**
- The AppImage must be built on a Linux system. The build script is provided for Linux users.
- For Linux users, the setup GUI will ask you to select your distribution (Debian/Ubuntu, Arch, or Fedora) to ensure proper Python installation if needed.
- Windows users can use `Setup.exe` in the root directory for a quick start.

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

[wibo](https://github.com/decompals/wibo), a minimal 32-bit Windows binary wrapper, will be automatically downloaded and used.

Linux
------

- Install [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages).

[wibo](https://github.com/decompals/wibo), a minimal 32-bit Windows binary wrapper, will be automatically downloaded and used.

Building
========

- Clone the repository:

  ```sh
  git clone https://github.com/zeldaret/tp.git
  ```

- Copy your game's disc image to `orig/GZ2E01`.
  - Supported formats: ISO (GCM), RVZ, WIA, WBFS, CISO, NFS, GCZ, TGC.
  - After the initial build, the disc image can be deleted to save space.

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

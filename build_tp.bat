@echo off
setlocal

:: === CONFIGURATION ===
set DECOMP_PATH=D:\tp
set VANILLA_ISO=D:\Roms\tp.iso
set OUTPUT_ISO=D:\Roms\build\tp_modified.iso
set DOLPHIN_PATH=E:\Dolphin-x64\Dolphin.exe

:: === BUILD PROCESS ===
cd /d %DECOMP_PATH%

echo ========================================
echo  Twilight Princess Build Script
echo ========================================
echo.

:: Step 0: Close any running Dolphin instances
echo [0/3] Closing Dolphin instances...
taskkill /F /IM Dolphin.exe >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo Dolphin closed successfully.
) else (
    echo No Dolphin instances running.
)
echo.

:: Create output directory if it doesn't exist
if not exist "D:\Roms\build" mkdir "D:\Roms\build"

:: Step 1: Configure
echo [1/3] Running configure.py...
python configure.py --non-matching --map
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: configure.py failed!
    pause
    exit /b 1
)
echo.

:: Step 2: Compile with ninja
echo [2/3] Running ninja...
ninja
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: ninja failed!
    pause
    exit /b 1
)
echo.

:: Step 3: Rebuild ISO
echo [3/3] Rebuilding ISO...
python tools\rebuild-decomp-tp.py "%VANILLA_ISO%" "%OUTPUT_ISO%" "%DECOMP_PATH%"
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: rebuild-decomp-tp.py failed!
    pause
    exit /b 1
)

echo.
echo ========================================
echo  Build complete!
echo  Output: %OUTPUT_ISO%
echo ========================================
echo.

:: Step 4: Launch Dolphin with the new ISO
echo [4/4] Launching Dolphin...
if exist "%DOLPHIN_PATH%" (
    start "" "%DOLPHIN_PATH%" -e "%OUTPUT_ISO%"
    echo Dolphin launched with modified ISO.
) else (
    echo WARNING: Dolphin not found at %DOLPHIN_PATH%
    echo Please update DOLPHIN_PATH in this script.
    pause
)

exit /b 0

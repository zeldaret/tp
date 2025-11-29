@echo off
echo ========================================
echo  Building TP 60fps Setup GUI
echo ========================================
echo.

:: Check if pyinstaller is installed
python -c "import PyInstaller" 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo PyInstaller not found. Installing...
    pip install pyinstaller
    if %ERRORLEVEL% NEQ 0 (
        echo ERROR: Failed to install PyInstaller
        pause
        exit /b 1
    )
)

echo Building Windows executable...
pyinstaller --clean setup_60fps.spec

if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Build failed!
    pause
    exit /b 1
)

echo.
echo ========================================
echo  Build complete!
echo  Executable: dist\TP_60fps_Setup.exe
echo ========================================
echo.

pause

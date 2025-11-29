#!/bin/bash

echo "========================================"
echo " Building TP 60fps Setup GUI (Linux)"
echo "========================================"
echo ""

# Check if pyinstaller is installed
if ! python3 -c "import PyInstaller" 2>/dev/null; then
    echo "PyInstaller not found. Installing..."
    pip3 install pyinstaller
    if [ $? -ne 0 ]; then
        echo "ERROR: Failed to install PyInstaller"
        exit 1
    fi
fi

# Build the executable
echo "Building Linux executable..."
pyinstaller --onefile --windowed --icon=../Icon.png --name="TP_60fps_Setup" setup_60fps.py

if [ $? -ne 0 ]; then
    echo "ERROR: Build failed!"
    exit 1
fi

echo ""
echo "Creating AppImage..."

# Create AppDir structure
mkdir -p AppDir/usr/bin
mkdir -p AppDir/usr/share/applications
mkdir -p AppDir/usr/share/icons/hicolor/256x256/apps

# Copy the executable
cp dist/TP_60fps_Setup AppDir/usr/bin/

# Create desktop entry
cat > AppDir/usr/share/applications/tp-60fps-setup.desktop << 'EOF'
[Desktop Entry]
Type=Application
Name=TP 60fps Setup
Comment=Twilight Princess 60fps Build Setup
Exec=TP_60fps_Setup
Icon=tp-60fps-setup
Categories=Development;
Terminal=false
EOF

# Copy icon
cp ../Icon.png AppDir/usr/share/icons/hicolor/256x256/apps/tp-60fps-setup.png

# Create AppRun script
cat > AppDir/AppRun << 'EOF'
#!/bin/bash
SELF=$(readlink -f "$0")
HERE=${SELF%/*}
export PATH="${HERE}/usr/bin/:${PATH}"
exec "${HERE}/usr/bin/TP_60fps_Setup" "$@"
EOF

chmod +x AppDir/AppRun

# Download appimagetool if not present
if [ ! -f "appimagetool-x86_64.AppImage" ]; then
    echo "Downloading appimagetool..."
    wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage
    chmod +x appimagetool-x86_64.AppImage
fi

# Create AppImage
ARCH=x86_64 ./appimagetool-x86_64.AppImage AppDir TP_60fps_Setup-x86_64.AppImage

if [ $? -eq 0 ]; then
    echo ""
    echo "========================================"
    echo " Build complete!"
    echo " AppImage: TP_60fps_Setup-x86_64.AppImage"
    echo "========================================"
    echo ""
else
    echo "ERROR: AppImage creation failed!"
    exit 1
fi

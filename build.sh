#!/bin/bash

# 1. Define variables
APP_NAME="GE-Proton-Standalone"
TOOL="./appimagetool-x86_64.AppImage"
SOURCE_DIR="AppDir"

# 2. Set the Architecture (Crucial for Steam Deck / x86_64)
export ARCH=x86_64

# 3. Ensure the tool is executable
chmod +x "$TOOL"

# 4. Set the AppImage version
export VERSION=$(date +%Y-%m-%d-%H%M)

echo "Starting build for $APP_NAME ($ARCH) version $VERSION..."

# 5. Run the tool with ARCH prepended
# We use --appimage-extract-and-run to avoid FUSE issues on some SteamOS updates
ARCH=x86_64 "$TOOL" --appimage-extract-and-run "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "------------------------------------------"
    echo "Success! Your AppImage is ready."
else
    echo "------------------------------------------"
    echo "Error: Build failed."
    echo "Make sure AppDir contains: AppRun, a .desktop file, and an icon."
fi

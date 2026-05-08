#!/bin/bash

# 1. Stop the Minecraft launcher if it is currently running
echo "Stopping Minecraft launcher..."
pkill minecraft-launcher

# 2. Remove the .desktop file (the application shortcut)
DESKTOP_FILE="$HOME/.local/share/applications/minecraft.desktop"
if [ -f "$DESKTOP_FILE" ]; then
    rm "$DESKTOP_FILE"
    echo "Removed desktop entry: $DESKTOP_FILE"
fi

# 3. Remove the extracted directory and desktop entry
echo "Removing Minecraft files..."
rm -rf minecraft-launcher
rm -rf "$HOME/.minecraft/launcher"

# 4. Remove the original downloaded archive
if [ -f "Minecraft.tar.gz" ]; then
    rm Minecraft.tar.gz
    echo "Removed download archive: Minecraft.tar.gz"
fi

echo "Minecraft launcher has been uninstalled and files cleaned up."

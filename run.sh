#!/bin/bash

xinput set-prop "TouchPlanet ETB" --type=float "Coordinate Transformation Matrix" 0 1 0 -1 0 1 0 0 1

folder_path="/home/wb/Downloads"
cd $folder_path

appimage_file=$(find $folder_path -name "*.AppImage" -print -quit)

if [[ -z "$appimage_file" ]]; then
    echo "No .AppImage file found in $folder_path"
else
    chmod +x $appimage_file
    $appimage_file
fi

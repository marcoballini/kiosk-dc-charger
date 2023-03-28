#!/bin/bash

folder_path="/home/wb/Downloads"
cd $folder_path

appimage_file=$(find $folder_path -name "*.AppImage" -print -quit)

if [[ -z "$appimage_file" ]]; then
    echo "No .AppImage file found in $folder_path"
else
    chmod +x $appimage_file
    $appimage_file
fi

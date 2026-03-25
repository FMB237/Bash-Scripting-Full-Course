#!/bin/bash
# This script converts image files (e.g., .jpg to .png)
# It requires ImageMagick to be installed

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "Installing required ImageMagick package..."
    sudo apt-get update && sudo apt-get install -y imagemagick
fi

# Check if arguments were provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 [file-1] [file-2] ... [file-n]"
    echo "Example: $0 image1.jpg image2.jpg"
    exit 1
fi

# Process each file
for file in "$@"; do
    if [ -f "$file" ]; then
        # Extract filename without extension
        filename="${file%.*}"
        convert "$file" "${filename}.png"
        echo "Converted: $file -> ${filename}.png"
    else
        echo "ERROR: $file is not a file"
    fi
done

echo "File conversion completed"

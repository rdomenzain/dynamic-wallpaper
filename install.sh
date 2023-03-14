#!/usr/bin/env bash

# Set crontab to run wallpaper.sh every hour
currentFolder="$(pwd)"
# Configure crontab
echo "0 */1 * * * $currentFolder/wallpaper.sh $1 >> /dev/null 2>&1" | crontab
# Set permissions
chmod +x wallpaper.sh
# Get a wallpaper
sh ./wallpaper.sh $1 >> /dev/null 2>&1

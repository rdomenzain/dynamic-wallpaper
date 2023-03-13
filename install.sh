#!/usr/bin/env bash

# Set crontab to run wallpaper.sh every hour
currentFolder="$(pwd)"
# Configure crontab
echo "0 * * * * $currentFolder/wallpaper.sh  > /dev/null 2>&1" | crontab
# Get a wallpaper
sh ./wallpaper.sh  >> /dev/null 2>&1

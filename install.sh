#!/usr/bin/env bash

# Set crontab to run wallpaper.sh every hour
currentFolder="$(pwd)"
# Configure crontab
echo "0 */1 * * * $currentFolder/task.sh $1 >> /dev/null 2>&1" | crontab
# Set permissions
chmod +x task.sh
# Get a wallpaper
sh ./task.sh $1 >> /dev/null 2>&1

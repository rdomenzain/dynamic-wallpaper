#!/usr/bin/env bash

# Remove crontab with the wallpaper.sh script
crontab -l | grep -v wallpaper.sh | crontab -
# Remove directory with wallpapers
rm -rf ~/.dynamic-wallpapers/
echo "Crontab removed, press enter to exit..."
read

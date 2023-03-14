#!/usr/bin/env bash

# Create a folder to store wallpapers
echo $
if [[ $1 = "-n" ]]
then
    osascript -e "display notification \"Start changing wallpaper\" with title \"Dynamic Wallpaper\""
fi
# Create a hidden folder to store wallpapers
mkdir -p ~/.dynamic-wallpapers/
cd ~/.dynamic-wallpapers/
# Get aleatory number from 0 to 7 (Bing only allows 0 to 7)
index_seed="$(jot -r 1 0 7)"
# Get the wallpaper from Bing (Download UHD)
rurl_esult="$(curl --silent --location --request GET 'http://www.bing.com/HPImageArchive.aspx?idx='$index_seed'&n=5&format=js' --header 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36'  | grep -o '"url":"[^"]*"'  | sed -e 's/"url":"/https:\/\/cn.bing.com/' | sed -e 's/"//' | sed -e 's/1920x1080/UHD/g')"
# Remove old wallpapers
rm -f wallpapler*.jpg
# Name the wallpaper with the current time
file_seed="$(date +%s)"
curl --silent $rurl_esult -o wallpapler_$file_seed.jpg > /dev/null
# Set path to the wallpaper
localpath="/Users/$USER/.dynamic-wallpapers/wallpapler_$file_seed.jpg"
# Set wallpaper
osascript -e "tell application \"System Events\" to set picture of (reference to every desktop) to \"$localpath\""
# Notify the user that the wallpaper has been changed
if [[ $1 = "-n" ]]
then
    osascript -e "display notification \"The wallpaper was successfully changed.\" with title \"Dynamic wallpaper\""
fi

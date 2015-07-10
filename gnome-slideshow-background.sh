#!/bin/bash

while [[ 1 -eq 1 ]]; do # Always true.
    for i in $(echo /home/tatsuOnline/Pictures/*); do # Replace with directory of pictures. 
        echo "Wallpaper is currently displaying: " $i # Tells you which picture is being displayed.
        gsettings set org.gnome.desktop.background picture-uri file:///${i} # Displays picture.
        sleep 60; # Switches to the next picture every minute.
    done
done

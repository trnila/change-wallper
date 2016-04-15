#!/bin/bash
wallper=$(curl https://api.desktoppr.co/1/wallpapers/random | python -mjson.tool | grep url | grep -Po "http://[^\"]+" | head -n1)
wget $wallper -O ~/.wallper.jpg
gsettings set org.gnome.desktop.background picture-uri $HOME/.wallper.jpg
gsettings set org.gnome.desktop.screensaver picture-uri $HOME/.wallper.jpg



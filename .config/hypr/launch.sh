#!/usr/bin/env sh

killall swww-daemon
killall waybar

wallpaper=$( find "$HOME/.wallpapers" -type f -print0 | shuf -z -n 1 )

wal -i $wallpaper

sed 1,4d $HOME/.cache/wal/colors.styl | sed 4,4d | sed "s/#//g" > $HOME/.cache/wal/colors-hyprland.conf

waybar -c $HOME/.config/waybar/config -s $HOME/.config/waybar/style.css &

swww-daemon & swww img $wallpaper --transition-fps 144 --transition-type center &

sleep 3

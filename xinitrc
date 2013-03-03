#!/bin/sh

# fix the cursor
xsetroot -cursor_name left_ptr
unclutter &

# add terminus font
xset +fp /usr/share/fonts/local
xset fp rehash

# load Xresources
xrdb -merge ~/.Xresources

# star virtualbox client
VBoxClient-all &

# restore wallpaper
nitrogen --restore

# start xmonad
exec xmonad

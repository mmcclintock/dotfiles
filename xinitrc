#!/bin/sh

# load custom key map
if [ -f $HOME/.xmodmap ]; then
    /usr/bin/xmodmap $HOME/.xmodmap
fi

# add terminus font
xset +fp /usr/share/fonts/local
xset fp rehash

# add xresources
xrdb -merge ~/.Xresources

# restore sound level
alsactl restore -f ~/.asound

# fix mouse
xsetroot -cursor_name left_ptr
unclutter &

# start xmonad
xmonad

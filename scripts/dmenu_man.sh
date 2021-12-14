#!/bin/sh

. ~/scripts/dmenu/config

export MANPAGER="most"

man=$(ls /usr/share/man/man1 | dmenu_rejc)

if [ "$man" != "" ]; then
    kitty -e man /usr/share/man/man1/$man
fi

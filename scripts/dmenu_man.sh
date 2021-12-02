#!/bin/sh

export MANPAGER="most"

kitty man /usr/share/man/man1/$(ls /usr/share/man/man1 | ~/scripts/dmenu/config)

#!/bin/sh

. ~/scripts/dmenu/config

kitty man /usr/share/man/man1/$(ls /usr/share/man/man1 | dmenu)

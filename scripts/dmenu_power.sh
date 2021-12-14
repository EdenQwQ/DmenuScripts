#!/bin/sh

. ~/scripts/dmenu/config

input=$(printf "poweroff\nreboot" | dmenu_rejc)

if [ "$input" != "" ]; then
    doas $input
fi

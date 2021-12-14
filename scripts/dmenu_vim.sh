#!/bin/sh

. ~/scripts/dmenu/config

sessiond=~/.local/share/nvim/session/

session=$(ls $sessiond | dmenu_rejc)

if [ "$session" != "" ]; then
    kitty nvim -S $sessiond$session
fi

#!/bin/sh

. "$HOME/scripts/dmenu/config"

kill=$(ps -a | awk 'NR>1 {print $4}' | sort | uniq | dmenu_rejc)

if [ "$kill" != "" ]; then
    ~/scripts/killall.sh $kill
fi

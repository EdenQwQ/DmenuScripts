#!/bin/sh

history=~/.cache/dmenu/search_history

save () {
    if [ $(grep $1 $history -c) -eq 0 ]; then
        if [ $(wc -l < $history) -eq 20 ]; then
            sed -i '1d' $history
        fi
        echo $1 >> $history
    fi
}

search="$(cat $history | ~/scripts/dmenu/config)"

if [ "$search" = clear ]; then > $history
elif [ "$search" != "" ]; then
    if [ $(echo $search | grep '\.' -c) -eq 0 ]; then
        save $search
        search=https://metager.org/meta/meta.ger3?eingabe=$(echo $search | sed -e 's/ /+/g')
    else
        if [ $(echo $search | grep 'http' -c) -eq 0 ]; then
            search=https://$search
            save $search
        fi
    fi
    xdg-open $search &
fi


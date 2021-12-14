#!/bin/sh

. ~/scripts/dmenu/config

copy="xclip -rmlastnl -selection clipboard"

# Common emojis I use >99% of the time:
common="-or g:smileys g:hand-fingers-open g:hand-fingers-partial g:hand-single-finger g:hand-fingers-closed g:hands g:body-parts g:person-gesture"

# Display onlt the male variants:
#common="$common -gender male"

# Set skin tone:
#common="$common -tone mediumdark"

case "${1:-all}" in
	all)           uni -q p all     | dmenu_line_rejc | grep -o "^'.'" | tr -d "'" | $copy ;;
	emoji)         uni -q e all     | dmenu_line_rejc | cut -d ' ' -f1 | $copy ;;
	emoji-common)  uni -q e $common | dmenu_line_rejc | cut -d ' ' -f1 | $copy ;;
	*)             uni -q e $@      | dmenu_line_rejc | cut -d ' ' -f1 | $copy ;;
esac

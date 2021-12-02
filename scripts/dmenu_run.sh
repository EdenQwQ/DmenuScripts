#!/bin/sh

. "${HOME}/.cache/wal/colors.sh"

export PATH="/usr/local/bin:$PATH"

dmenu_run -i -fn "Iosevka Nerd Font" -nb "$color0" -nf "$color15" -sb "$color0" -sf "$color15" -nhb "$color0" -shb "$color0" -nhf "$color2" -shf "$color1"

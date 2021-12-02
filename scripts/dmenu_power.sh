#!/bin/sh

doas $(printf "poweroff\nreboot" | ~/scripts/dmenu/config)

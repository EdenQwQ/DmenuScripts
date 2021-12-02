#!/bin/sh

kitty nvim -S ~/.local/share/nvim/session/$(ls ~/.local/share/nvim/session/ | ~/scripts/dmenu/config)

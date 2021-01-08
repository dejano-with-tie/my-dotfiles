#!/bin/sh
WALL=$(find ${HOME}/.wallpapers/ -regextype posix-extended -regex ".*(png|jpg|jpeg)" | sort -R | tail -1)
feh --no-fehbg --bg-scale "$WALL"

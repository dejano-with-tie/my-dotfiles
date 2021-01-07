#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Not quite sure what is happening here
# AFAIK it will pass $DISPLAY to new session and somehow I'm allowed to start multiple X11 sessions with this
dbus-update-activation-environment --systemd DISPLAY

# mount disk utils
udiskie --tray &

"HOME"/.local/scripts/wallpaper-rnd.sh &

# run compositor
#picom -b --config "$HOME"/.config/picom/picom.conf

# disable beeping sound in terminal (and other apps) with X11
# b -> bell volume
xset -b b off

exec i3

#!/bin/sh

# ███████╗████████╗ █████╗ ██████╗ ████████╗██╗  ██╗
# ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝╚██╗██╔╝
# ███████╗   ██║   ███████║██████╔╝   ██║    ╚███╔╝
# ╚════██║   ██║   ██╔══██║██╔══██╗   ██║    ██╔██╗
# ███████║   ██║   ██║  ██║██║  ██║   ██║   ██╔╝ ██╗
# ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝

# 01001101 01101001 01101110 01101001 01000010 01100101 01100001 01110011 01110100

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

xbindkeys
# exec startplasma-x11
exec bspwm -c ~/.config/bspwm/bspwmrc

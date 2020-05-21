#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# sets the keymap to tr
setxkbmap tr

# synaptic touchpad options go here #<\\>    
synclient vertedgescroll=1          #<//>    
synclient horizedgescroll=1         #<\\>   That's a rose pedal ;)
synclient TapButton1=1              #<//>   
# ###################################<\\>    

# Icon Themes go here
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'

# sets the background
feh --bg-fill PepperAndCarrot.jpg

# starts the composite manager, picom
picom --backend glx --blur-background &

# starts conky
conky &

# starts volumeicon
volumeicon &

# starts awesomeWM
exec awesome

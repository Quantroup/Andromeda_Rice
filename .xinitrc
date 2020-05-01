#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# sets the keymap to tr
setxkbmap tr

# synaptic touchpad options go here #<\\>    
synclient vertedgescroll=1          #<//>    
synclient horizedgescroll=1         #<\\>   That's a rose body ;)
synclient TapButton1=1              #<//>   
# ###################################<\\>    

# sets the background
feh --bg-scale jf-brou-915UJQaxtrk-unsplash.jpg

# starts the composite manager, picom
picom --backend glx --blur-background &

# starts conky
conky &

# starts awesomeWM
exec awesome

# ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
# ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
# ██████╔╝███████║███████╗███████║██████╔╝██║     
# ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║     
# ██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
# ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ 


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1="\[\e[92m\]\[┌┼───┤\] \[\e[35m\]\u\[\e[39m\]@\[\e[91m\]\h \[\e[92m\]\[├───┤\] \t \[├───────┤\] \[\e[91m\]\w \[\e[92m\]\[├─────\]\n\]\[└┼─\]\[\e[92m\]\$\[\e[92m\]\[─┤\]►\[\e[39m\]\e\e" # There is a problem with bash word wrap and to fix this we had to add these escape charecters(/e) to prevent flows.
# I still don't know how I managed to fix this. :P

# PS1='[\u@\h \W]\$ ' # the default prompt if something breaks and you're too lazy to fix

# ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
# ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
# ██████╔╝███████║███████╗███████║██████╔╝██║        If something is wrong,
# ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║        you're not using your head.
# ██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
# ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ 


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1="\[\e[92m\]\[┌┼───┤\] \[\e[35m\]\u\[\e[39m\]@\[\e[91m\]\h \[\e[92m\]\[├───┤\] \t \[├───────┤\] \[\e[91m\]\W \[\e[92m\]\[├─────\]\n\]\[└┼─\]\[\e[92m\]\$\[\e[92m\]\[─┤►\]\e[39m" # By the power of sheer luck and escape charecters, there is no overflow of text.
# If you want to add more stuff try to use escape charecters ( \[foo\] ) when you don't want stuff to be counted
# towards the text length, making word wraps possible.

# PS1='[\u@\h \W]\$ ' # the default prompt if something breaks and you're too lazy to fix

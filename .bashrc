#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [[ "$(tty)" == "/dev/tty1" ]]
then
	clear
	startx --:7: > /dev/null 2>&1
fi

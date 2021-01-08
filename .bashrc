#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# load .bash_aliases
if [ -e $HOME/.bash_aliases ]; then
	source $HOME/.bash_aliases
fi

# load .profile
if [ -e $HOME/.profile ]; then
	source $HOME/.profile
fi


PS1='[\u@\h \W]\$ '

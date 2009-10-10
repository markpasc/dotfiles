if [ -e /etc/bashrc ]
then
	. /etc/bashrc
fi

# gimme screen compatible history
shopt -s histappend
shopt -s checkwinsize
export HISTCONTROL=ignoredups

export PS1='\u@\h:\w\$ '

export EDITOR=vim
export ACK_PAGER='less -RF'
export ACK_OPTIONS=--follow

. ~/bin/bash_completion
. ~/.bash_local
. ~/.bash_aliases


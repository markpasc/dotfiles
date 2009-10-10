if [ -e /etc/bashrc ]
then
	. /etc/bashrc
fi

export PS1='\u@\h:\w\$ '


export EDITOR=vim
export ACK_PAGER='less -RF'
export ACK_OPTIONS=--follow

. ~/bin/bash_completion
. ~/.bash_local
. ~/.bash_aliases


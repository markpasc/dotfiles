if [ -e /etc/bashrc ]
then
	. /etc/bashrc
fi

export PS1='\u@\h:\w\$ '

alias ls="ls --color=tty -lF"
alias nano=vim
if [ -e /usr/bin/vim ]
then
    alias vi=vim
fi
alias mysql="mysql --pager='less -SX'"
alias diff="colordiff"
alias less="less -RF"

export EDITOR=vim
export ACK_PAGER='less -RF'
export ACK_OPTIONS=--follow

. ~/bin/bash_completion
. ~/.bash_local


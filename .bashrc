if [ -e /etc/bashrc ]
then
	. /etc/bashrc
fi

export SYSTEM=`uname -s`

# gimme screen compatible history
shopt -s histappend
shopt -s checkwinsize
export HISTCONTROL=ignoredups

export PS1='\u@\h:\w\$ '

if [ $SYSTEM == 'Darwin' ]
then
    export EDITOR='mate -w'
else
    export EDITOR=vim
fi
export ACK_PAGER='less -RF'
export ACK_OPTIONS=--follow

test -e ~/bin/bash_completion && source ~/bin/bash_completion
test -e ~/.bash_local && source ~/.bash_local
. ~/.bash_aliases


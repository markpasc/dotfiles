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
    source ~/.bash_mac
else
    export EDITOR=vim
fi
export ACK_PAGER='less -RF'
export ACK_OPTIONS=--follow

export PYTHONSTARTUP="$HOME/bin/pyhistory.py"

test -e ~/.bash_local && source ~/.bash_local
source ~/.bash_aliases


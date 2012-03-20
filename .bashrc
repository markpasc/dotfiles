if [ -e /etc/bashrc ]
then
    . /etc/bashrc
fi

export SYSTEM=`uname -s`

# gimme screen compatible history
shopt -s histappend
shopt -s checkwinsize
export HISTCONTROL=ignoredups

export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

export PS1='\u@\h:\w\$ '

export PATH="$HOME/bin:$PATH"
export ACK_PAGER='less -RF'
export ACK_OPTIONS='--follow --type-set coffee=.coffee'

export PYTHONSTARTUP="$HOME/bin/pyhistory.py"

if [ $SYSTEM == 'Darwin' ]
then
    source ~/.bash_mac
else
    export EDITOR=vim
fi

test -e ~/.bash_local && source ~/.bash_local
source ~/.bash_aliases

alias realias="$EDITOR ~/.bash_aliases; source ~/.bash_aliases"

# editing
if [ $SYSTEM == "Darwin" ]
then
    alias ls="ls -lFG"
else
    alias ls="ls --color=tty -lF"
fi
alias nano=vim
if [ -e /usr/bin/vim ]
then
    alias vi=vim
fi

# paging
alias mysql="mysql --pager='less -SX'"
alias less="less -RF"

alias diff="colordiff"


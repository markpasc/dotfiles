if [ -e /etc/bashrc ]
then
    . /etc/bashrc
fi

export SYSTEM=`uname -s`
export PATH="$HOME/bin:$PATH"
source ~/.dotfiles/sensible.bash
PROMPT_DIRTRIM=4

if [ $SYSTEM == 'Darwin' ]
then
    source ~/.bash_mac
else
    export EDITOR=vim
    export LANG=en_US.UTF-8
fi

test -e ~/.bash_local && source ~/.bash_local
source ~/.bash_aliases

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

export ACK_PAGER='less -RFXS'
export ACK_OPTIONS='--follow'

alias realias="$EDITOR ~/.bash_aliases; source ~/.bash_aliases"

# editing
if [ $SYSTEM == "Darwin" ]
then
    alias ls="ls -lFG"
    alias less="less -RFX"
    alias hide="SetFile -a V"
else
    alias ls="ls --color=tty -lF"
    alias less="less -RF"
fi

alias nano=vim
if [ -e /usr/bin/vim ]
then
    alias vi=vim
fi

# paging
alias mysql="mysql --pager='less -SX'"

alias mkdir="mkdir -vp"
alias diff="colordiff"
alias pywhich="pywhich -s -i"
alias pep8="pep8 --repeat --show-source"
alias virtualenv="virtualenv --distribute"
alias deexif="exiftool -GPSAltitude= -GPSLatitude= -GPSLongitude= -GPSAltitudeRef= -GPSLatitudeRef= -GPSLongitudeRef= -GPSTimestamp="

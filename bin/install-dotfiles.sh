#!/bin/bash

DOTFILES="bashrc bash_mac bash_aliases colordiffrc gitconfig gitignore-global hgrc screenrc vimrc vim/colors/dw_orange.vim"
FILES="bin/*"

cd ~/.dotfiles
for file in $DOTFILES
do
    DIR=`dirname ../.$file` test -d $DIR || mkdir -p $DIR
    ln -snfv ~/.dotfiles/$file ../.$file
done

for file in $FILES
do
	DIR=`dirname ../$file` test -d $DIR || mkdir -p $DIR
	ln -snfv ~/.dotfiles/$file ../$file
done

# Include pywhich from its submodule.
ln -snfv ~/.dotfiles/pywhich/bin/pywhich ../bin/pywhich

# run the .osx stuff on the mac
if [ "x$SYSTEM" == "xDarwin" ]
then
    sh ~/.dotfiles/mac_init.sh
fi

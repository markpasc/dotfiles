#!/bin/bash

FILES=".bashrc .bash_mac .bash_aliases .colordiffrc .gitconfig .gitignore-global .hgrc .screenrc .vimrc .vim/colors/dw_orange.vim bin/*"

cd ~/.dotfiles
for file in $FILES
do
    DIR=`dirname ../$file` test -d $DIR || mkdir -p $DIR
    ln -snfv ~/.dotfiles/$file ../$file
done

# Include pywhich from its submodule.
ln -snfv ~/.dotfiles/pywhich/bin/pywhich ../bin/pywhich

# run the .osx stuff on the mac
if [ $SYSTEM == "Darwin" ]
then
    sh ~/.dotfiles/mac
fi

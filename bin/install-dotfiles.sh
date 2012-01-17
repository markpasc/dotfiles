#!/bin/bash

FILES=".bashrc .bash_mac .bash_aliases .colordiffrc .gitconfig .gitignore-global .hgrc .screenrc .vimrc .vim/colors/dw_orange.vim bin/*"

cd ~/.dotfiles
for file in $FILES
do
    DIR=`dirname ../$file` test -d $DIR || mkdir -p $DIR
    ln -snfv ~/.dotfiles/$file ../$file
done

# run the .osx stuff
sh ~/.dotfiles/mac

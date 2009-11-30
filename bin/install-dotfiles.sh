#!/bin/bash

FILES=".bashrc .bash_aliases .colordiffrc .gitconfig .screenrc .vimrc .vim/colors/dw_orange.vim bin/*"

cd ~/.dotfiles
for file in $FILES
do
    DIR=`dirname ../$file` test -d $DIR || mkdir $DIR
    ln -snfv ~/.dotfiles/$file ../$file
done

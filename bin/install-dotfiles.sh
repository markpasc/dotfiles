#!/bin/bash

FILES=".bashrc .colordiffrc .screenrc .vimrc .vim/colors/dw_orange.vim bin/*"

cd ~/.dotfiles
for file in $FILES
do
    DIR=`dirname ../$file` test -d $DIR || mkdir $DIR
    ln -sniv ~/.dotfiles/$file ../$file
done

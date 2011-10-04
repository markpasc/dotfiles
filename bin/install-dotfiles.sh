#!/bin/bash

FILES=".bashrc .bash_mac .bash_aliases .colordiffrc .gitconfig .gitignore-global .screenrc .vimrc .vim/colors/dw_orange.vim bin/*"

cd ~/.dotfiles
for file in $FILES
do
    DIR=`dirname ../$file` test -d $DIR || mkdir $DIR
    ln -snfv ~/.dotfiles/$file ../$file
done

# fix up git config to use ignores file
git config --global core.excludesfile ~/.gitignore-global

# run the .osx stuff
sh ~/.dotfiles/mac

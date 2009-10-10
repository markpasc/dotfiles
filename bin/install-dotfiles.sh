#!/bin/bash

FILES=".bashrc .colordiffrc .screenrc .vimrc bin/*"

cd ~/.dotfiles
for file in $FILES
do
    ln -sniv ~/.dotfiles/$file ../$file
done

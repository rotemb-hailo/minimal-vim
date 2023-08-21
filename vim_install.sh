#!/bin/bash
set -e

sudo apt-get update
sudo apt-get install -y curl fzf

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

rm -f ~/.vimrc
cp .vimrc ~/.vimrc
vim ~/.vimrc +PlugInstall + q!

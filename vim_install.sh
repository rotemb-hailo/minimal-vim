#!/bin/bash
set -e

# vim-gtk3 needed for clipboard - https://vi.stackexchange.com/a/31142
sudo apt-get update
sudo apt-get install -y curl fzf vim-gtk3

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

rm -f ~/.vimrc
cp .vimrc ~/.vimrc
vim ~/.vimrc +PlugInstall + q!

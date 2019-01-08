#!/bin/sh

cwd=$(pwd)

ln -s "$cwd/zshrc" ~/.zshrc
mkdir -p ~/.config/
ln -s "$cwd/nvim" ~/.config/nvim
ln -s "$cwd/gitconfig" ~/.gitconfig

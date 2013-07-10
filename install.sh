#!/bin/sh

find ~/.dotfiles/ -maxdepth 1 -name '*' \
    ! -path ~/.dotfiles/ \
    ! -path ~/.dotfiles/.*.swp \
    ! -path ~/.dotfiles/.git \
    ! -path ~/.dotfiles/.gitmodules \
    ! -path ~/.dotfiles/.gitignore \
    ! -path ~/.dotfiles/install.sh \
    -exec ln -svf {} --target-directory=$HOME \;    


#!/bin/sh

if [ -w "$HOME/.zshrc" ]; then
    printf '%s' 'Overwrite existing zshrc? (y/n) '
    read ANSWER

    case $ANSWER in
        [yY]) rm "$HOME/.zshrc" && ln -s "$PWD/zshrc" "$HOME/.zshrc" ;;
    esac
fi

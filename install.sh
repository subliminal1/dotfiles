#!/bin/sh

if [ ! $(command -v zsh) ]; then
    echo "zsh is not installed, skipping.";
else 
    if [ -w "$HOME/.zshrc" ]; then
        printf '%s' 'Overwrite existing zshrc? (y/n) '
        read ANSWER
        case $ANSWER in
            [yY]) 
                echo "overwriting zshrc"
                rm "$HOME/.zshrc" 
                ln -s "$PWD/zshrc" "$HOME/.zshrc"
                ;;
        esac
    fi
fi

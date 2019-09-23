#!/bin/sh

if [ ! $(command -v zsh) ]; then
    echo "zsh is not installed, skipping.";
else 
    install_zsh_config() {
        ln -s "$PWD/zsh/zshrc" "$HOME/.zshrc"
    }

    if [ -L "$HOME/.zshrc" ]; then
        printf '%s' 'Overwrite existing zshrc? (y/n) '
        read ANSWER
        case $ANSWER in
            [yY]) 
                echo "overwriting zshrc"
                rm "$HOME/.zshrc" 
                install_zsh_config
                ;;
        esac
    else
        install_zsh_config
    fi
fi

# TODO add checks/removal prompts
ln -s "$PWD/vim/config" "$HOME/.vim"
ln -s "$PWD/vim/vimrc" "$HOME/.vimrc"
ln -s $PWD/nvim "$HOME/.config"


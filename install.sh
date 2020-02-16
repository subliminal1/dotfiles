#!/bin/sh

IFS=""
output=()

replace () {
    if [ -e $1 ]; then
        printf "$1 already exists, overwrite (y/n) "
        read ANSWER
        if [ $ANSWER = "n" ]; then
            return 0
        fi

        if [ -d $1 ]; then
            rm -r $1
        else
            rm $1
        fi
    fi

    DEST=`dirname $1`
    if [ ! -d $DEST ]; then
        mkdir -p $DEST
    fi

    ln -s $2 $1
    output+=("[$2] -> [$1]")
}

replace ~/.zshrc $PWD/zsh/zshrc
replace ~/.vim $PWD/nvim
replace ~/.vimrc $PWD/nvim/init.vim
replace ~/.tmux.conf $PWD/tmux.conf
replace ~/.config/fish/config.fish $PWD/fish/config.fish

for i in ${output[@]}; do
    printf '%s\n' "$i"
done

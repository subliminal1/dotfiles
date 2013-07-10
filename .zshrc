# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mmyers/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz promptinit
promptinit
prompt redhat

alias ls='ls -F --color=auto'
export LC_ALL=en_US.utf8

precmd () {
    print -Pn "\033]0;%n@%M: %~\a"
}

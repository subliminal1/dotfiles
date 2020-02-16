set fish_greeting
source ~/.fzf/shell/key-bindings.fish

if type -q ag
    set -x FZF_DEFAULT_COMMAND 'ag -l -g ""'
end

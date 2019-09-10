# sudo -r will drop into a root shell preserving environment

SUDO=$(command -v sudo)

sudo() {
    if [[ $1 == "-r" ]]; then
        $SUDO -E -s $SHELL
    else
        $SUDO $@
    fi
}

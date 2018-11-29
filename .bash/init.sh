FOLDER=$(dirname "$(readlink -f "$BASH_SOURCE")")


# loads history tweaks
source $FOLDER/history.sh

# loads aliases
source $FOLDER/aliases.sh

# loads keybindings if shell is interactive
[ -t 1 ] && source $FOLDER/keybindings.sh

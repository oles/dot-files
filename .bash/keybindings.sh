stty stop undef # clears ctrl + s, so that search history works

bind '"\C-h": backward-kill-word' # ctrl + backspace = delete word backward
bind '"\e[3;5~": kill-word' # ctrl + del = delete word

# ctrl + l = reset instead of clear
# to avoid "cannot find keymap for command" errors,
# the reset command is bound to a non-valid random character,
# which is then set as the keybind instead
bind -x '"\201": printf "\ec"'
bind '"\C-l": "\201"'

for i in - {0..9} ; do bind -r '\e'$i; done # clears readline arguments keybindings

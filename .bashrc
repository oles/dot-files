# sets eternal history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTCONTROL=ignoredups
export HISTIGNORE="ls:fg:cdd:exit:ll:ll ..:jobs:cd:cd ..:htop:cd ../"
export HISTFILE=~/.bash_eternal_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"



# loads aliases
[ -f ~/.bash_aliases ] && . ~/.bash_aliases


# set key rebinds
if [ -t 1 ] # if interactive
then
    stty stop undef # ctrl+s (search) now work

    bind '"\C-h": backward-kill-word' # ctrl + backspace = delete word backward
    bind '"\e[3;5~": kill-word' # ctrl + del = delete word
    bind -x '"\C-l": printf "\ec"' # ctrl + l = reset instead of clear

    for i in - {0..9} ; do bind -r '\e'$i; done # disables readline arguments
fi

# makes history eternal - by default bash history overwrites
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTCONTROL=ignoredups
export HISTIGNORE="ls:fg:cdd:exit:ll:ll ..:jobs:cd:cd ..:htop:cd ../"
export HISTFILE=~/.cache/bash_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# makes history eternal - by default bash history overwrites
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTCONTROL=ignoredups
export HISTIGNORE="ls:cdd:exit:ll:ll ..:cd:cd ..:cd ../"
export HISTFILE=~/.cache/bash_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

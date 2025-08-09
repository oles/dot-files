# makes history eternal - by default bash history overwrites
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTCONTROL=ignoreboth
export HISTIGNORE="ls:cdd:exit:ll:ll ..:cd:cd ..:cd ../:fg"
export HISTFILE=~/.cache/bash_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

alias sudo='sudo '
alias doit='sudo apt-get update && sudo apt-get upgrade'
alias doup='sudo apt-get dist-upgrade'
alias docl='sudo apt-get autoremove && sudo apt-get autoclean'
alias push='git push origin master'
alias pull='git pull origin master'
alias ga='git add'
alias gaa='git add -A'
alias gb='git branch'
alias gch='git checkout'
alias gd='git diff'
alias gs='git status'
function gc() { git commit -m "$*" ;}
function gg() { git grep "$*" -- ':!package-lock.json' ;}
function ggi() { git grep -i "$*" -- ':!package-lock.json' ;}
function grao() { git remote add origin $1;}
alias ll='LC_ALL=C ls -lAh --group-directories-first --color'
alias grep='grep --color=auto --exclude-dir=node_modules'
alias wtf='du -sch .[!.]* * | sort -h'
alias pacman='sudo pacman'
alias syu='sudo pacman -Syu && pikaur -Su --aur'
alias syc='sudo pacman -Rns $(pacman -Qdtq)'
alias list-empty-folders='find . -type d -empty'
alias cdd='cd "$(git rev-parse --show-toplevel)"'

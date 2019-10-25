alias sudo='sudo '
alias doit='sudo apt-get update && sudo apt-get upgrade'
alias doup='sudo apt-get dist-upgrade'
alias docl='sudo apt-get autoremove && sudo apt-get autoclean'
alias push='git push origin master'
alias pull='git pull origin master'
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gaa='git add -A'
alias gch='git checkout'
function gc() { git commit -m "$*" ;}
function gg() { git grep $* -- ':!package-lock.json' ;}
alias ll='LC_ALL=C ls -lAh --group-directories-first --color'
alias grep='grep --color=auto --exclude-dir=node_modules'
alias wtf='du -sch .[!.]* * | sort -h'
alias pacman='sudo pacman'
alias syu='sudo pacman -Syu && pikaur -Su --aur'
alias syc='sudo pacman -Rns $(pacman -Qdtq)'
alias list-empty-folders='find . -type d -empty'
alias cdd='cd "$(git rev-parse --show-toplevel)"'


function generate-password() {
    LENGTH=$1
    PASSWORD=$(tr -dc A-Za-z0-9 < /dev/urandom | dd bs=${LENGTH:-30} count=1 2>/dev/null)
    echo $PASSWORD
}


function flac-to-320() {
    FLACDIR=$1
    whatmp3 --notorrent --nolog --nocue --320 "${FLACDIR}"
}

function flac-to-320-all() {
    TARGET=$1
    for FOLDER in $TARGET/* ; do
        flac-to-320 "$FOLDER"
    done
}

function scp-all() {
    REMOTE=$1
    FILES=$2
    TO=$3
    while read ENTRY; do
        scp -r $REMOTE:"$(printf %q "$ENTRY")" $TO
    done < $FILES
}

function get-gzip-size() {
    FILE=$1
    gzip -9 -c "${FILE}" | wc -c | numfmt --to=iec-i --suffix=B --padding=10
}

function compare-gzip-size() {
    FILE=$1

    BEFORE=$(cat "${FILE}" | wc -c | numfmt --to=iec-i --suffix=B --padding=10)
    AFTER=$(get-gzip-size "${FILE}")

    printf 'before: %-10s\n' "$BEFORE"
    printf 'after:  %-10s\n' "$AFTER"
}

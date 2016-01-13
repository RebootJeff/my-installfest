###
### ALIASES
###
# Git Purge: delete branches that have been merged into CURRENT branch
alias gitpurge='git branch --merged | grep -v "\*" | grep -v "master" | xargs -n 1 git branch -d'

###
### COLORS
###
if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
    export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
    export TERM=xterm-256color
fi


# setting the colors
if tput setaf 1 &> /dev/null; then
    tput sgr0
    if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
        MAGENTA=$(tput setaf 1)
        BLUE=$(tput setaf 24)
        GREEN=$(tput setaf 2)
        TEAL=$(tput setaf 51)
        # WHITE=$(tput setaf 3)
        WHITE=$(tput setaf 7)
    else
        MAGENTA=$(tput setaf 5)
        BLUE=$(tput setaf 4)
        GREEN=$(tput setaf 2)
        PURPLE=$(tput setaf 1)
        WHITE=$(tput setaf 7)
    fi
    BOLD=$(tput bold)
    RESET=$(tput sgr0)
else
    MAGENTA="\033[1;31m"
    ORANGE="\033[1;33m"
    GREEN="\033[1;32m"
    PURPLE="\033[1;35m"
    WHITE="\033[1;37m"
    BOLD=""
    RESET="\033[m"
fi

export MAGENTA
export BLUE
export GREEN
export TEAL
export WHITE
export BOLD
export RESET

# Git branch info
function parse_git_dirty() {
    [[ $(git status 2> /dev/null | tail -n1) != *"working directory clean"* ]] && echo "*"
}

function parse_git_branch() {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

###
### Custom command prompt
###
export PS1="\$(date +%H:%M:%S) \[${BOLD}${BLUE}\]\u:\[$BLUE\]\h \[$WHITE\]in \[$TEAL\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$MAGENTA\]\$(parse_git_branch)\[$WHITE\]\n\$\[$RESET\] "
export PS2="\[$BLUE\]→ \[$RESET\]"

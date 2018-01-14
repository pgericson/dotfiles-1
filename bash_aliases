
# Set host
alias mediastuff='doctl ssh mediastuff'

# Set standard editor
export EDITOR=vi

# Git Shortcuts
alias amend='git commit --amend'
alias gad='git add .'
alias gco='git commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias gg='git lg'
alias gch='git checkout'

alias gs='git status'
alias gph='git push'
alias gpl='git pull --rebase'

# ruby specific
alias be='bundle exec'

# fast shortcuts to current work
alias cwd='cd ~/work/vatum/'

# alias gc='git clone'
alias gc='gitclone' # from bin

# tmux shortcuts
alias tm='tmux -2'
alias tma='tmux -2 attach -t $1'
alias tml='tmux ls'
alias tmk='tmux kill-session -t $1'
alias tmg='tmux new -s $(basename $(pwd))'

# tmux clean. Kill all integer tmux sessions
alias tmclean='tmux ls -F "#{session_name}" | while read -r line; do if [[ $line =~ ^-?[0-9]+$  ]]; then tmux kill-session -t $line; fi; done'

# docker
alias dc='docker-compose'

# ssh agent for session
alias ssha='ssh-add ~/.ssh/id_rsa'

# Others Shortcuts
alias ls='ls -color'
alias l='ls -lha'
alias cd.='cd ..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias u='cd ..'
alias v='vim -p'
alias vi='vim -p'

# easy rsync
alias rs='rsync -azvh --progress'

# download a song easy
alias youtube-audio='youtube-dl --extract-audio --audio-format best'

# open a new terminal
alias x='rxvt &'

# Functions
function take {
  mkdir $1
  cd $1
}

extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1    ;;
            *.tar.gz)    tar xvzf $1    ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar x $1     ;;
#            *.gz)        gunzip $1      ;;
            *.gz)        tar xvf $1      ;;
            *.tar)       tar xvf $1     ;;
            *.tbz2)      tar xvjf $1    ;;
            *.tgz)       tar xvzf $1    ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)           echo "don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

alias x="rxvt &"


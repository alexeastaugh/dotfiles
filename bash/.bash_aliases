# Alex Eastaugh ~/.bash_aliases

# Bash
alias aliases='grep alias ~/.bash_aliases | tail -n +3'
alias ffs='sudo "$BASH" -c "$(history -p !!)"'
alias ls='ls --color=always'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ll='ls -l'
alias la='ls -lA'
alias ping='ping -c 4'
alias grep='grep --color=always'
alias ip='ip -c' # This outputs in colour
alias weather='curl wttr.in' # Nice terminal weather forecast
alias wiki='cd /var/www/wikitten/library; echo "You are now in $PWD"; ls -l'

# Bash Functions
function projects() {
  if [ -d ~/projects ];then
    cd ~/projects; echo "You are now in $PWD"; ls -l
      else
      echo "Projects folder not yet created"
  fi
}

function dots() {
  cd ~/dotfiles; echo "You are now in $PWD"; ls -l
}

# Tmux
alias lst='tmux list-sessions'
alias re='tmux attach -t'
alias newt='tmux new -s' # "They mostly come out at night, mostly"
alias killt='tmux kill-session -t'

# Git
alias pull='git pull'
alias gs='git status'
alias ga='git add'
alias gc='git commit' # for commit messages that require an editor
alias gcm='git commit -m'
alias gp='git push'
alias gl='git log'
alias greset='git reset --soft HEAD^' # Remove last commit but keeps changes staged
alias greset-hard='git reset --hard HEAD^' # Remove last commit AND all changes from staging/files

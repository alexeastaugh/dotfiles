# Alex Eastaugh ~/.bash_aliases

# bash
alias aliases='grep alias ~/.bash_aliases | tail -n +3'
alias projects='cd ~/projects; ls -l'
alias ffs='sudo "$BASH" -c "$(history -p !!)"'
alias ls='ls --color=always'
alias ..='cd ..'
alias ll='ls -l'
alias la='ls -lA'
alias ping='ping -c 4'
alias grep='grep --color=always'

# tmux
alias lst='tmux list-sessions'
alias re='tmux attach -t'
alias newt='tmux new -s' #"They mostly come out at night, mostly"
alias killt='tmux kill-session -t'

# git
alias gs='git status'
alias ga='git add'
alias gc='git commit' #for commit messages that require an editor
alias gcm='git commit -m'
alias gp='git push'
alias gl='git log'
alias greset='git reset --soft HEAD^' # Remove last commit but keeps changes staged
alias greset-hard='git reset --hard HEAD^' #Remove last commit AND all changes from staging/files

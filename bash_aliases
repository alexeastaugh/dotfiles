# Alex Eastaugh ~/.bash_aliases

# bash
alias aliases='grep alias ~/.bash_aliases'
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
alias gcm='git commit -m'
alias gp='git push'


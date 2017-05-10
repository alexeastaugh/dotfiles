# Alex Eastaugh ~/.bash_aliases

# Bash
alias aliases='grep alias ~/.bash_aliases | tail -n +3'
alias ffs='sudo "$BASH" -c "$(history -p !!)"'
alias ls='ls --color=always'
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -l'
alias la='ls -lA'
alias ping='ping -c 4'
alias grep='grep --color=always'
alias ip='ip -c' # This outputs in colour
alias weather='curl wttr.in' # Nice terminal weather forecast
alias wiki='cd /var/www/wikitten/library; echo "You are now in $PWD"; ls -l'
alias verifypubkey='ssh-keygen -l -f'

# virtualbox list vm's
function vblist() {
    echo
    vboxmanage list vms
    echo
}

# virtualbox start headless
function vbstart() {
    vboxmanage startvm "$@" --type headless
}

# virtualbox stop
function vbstop() {
    vboxmanage controlvm "$@" poweroff --type headless
}

# projects - Takes you to the projects folder and lists the contents
function projects() {
    if [ -d ~/projects ];then
        cd ~/projects; echo "You are now in $PWD"; ls -l
    else
        echo "Projects folder not yet created"
    fi
}

# dots - Take me to your dotfiles
function dots() {
    cd ~/dotfiles; echo "You are now in $PWD"; ls -l
}

# generatekey - Creates an rsa key with 4096 bytes and add the key name to the comments
function sshgeneratekey() {
    if [ $# -eq 0 ];then
        echo "Please supply a comment for the key file"
    else    
        ssh-keygen -t rsa -b 4096 -C "$@"
    fi
}

function cookbooks() {
    if [ -d ~/projects/cookbooks ];then
        cd ~/projects/cookbooks; echo "You are now in $PWD"; ls
    else
        echo "Cookbooks have not been cloned yet!"
    fi
}

# Scrot - screenshot tool
alias scrot='scrot -q100 -s'

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
alias gb='git branch -a' # -a flag to show all branches, including remote ones
alias gco='git checkout'
alias gl='git log'
alias greset='git reset --soft HEAD^' # Remove last commit but keeps changes staged
alias greset-hard='git reset --hard HEAD^' # Remove last commit AND all changes from staging/files

################
# WORK ALIASES #
################

# ssh to old platform using ip address
connect() {
    ssh -i ~/.ssh/alex_vd/GetOpticsAWSKey2013.pem ubuntu@"$@"
}

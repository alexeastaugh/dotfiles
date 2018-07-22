# Path to your oh-my-zsh installation.
export ZSH=/home/alex/.oh-my-zsh

# Theme
#ZSH_THEME="random"
#ZSH_THEME="jbergantine"
#ZSH_THEME="agnoster"
#ZSH_THEME="terminalparty"
ZSH_THEME="theunraveler"

# Plugins ~/.oh-my-zsh/plugins/*
plugins=(git kitchen aws knife docker terraform vagrant)

# Aliases and Functions
source $ZSH/oh-my-zsh.sh

# User configuration
source $HOME/.aliases
source $HOME/.functions

# Set Chef env variables for zsh
#eval "$(chef shell-init zsh)"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
if [ -f /usr/local/bin/wal ]; then
    (cat ~/.cache/wal/sequences &)
fi

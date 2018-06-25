# Path to your oh-my-zsh installation.
export ZSH=/home/alex/.oh-my-zsh

# Theme
#ZSH_THEME="random"
#ZSH_THEME="jbergantine"
#ZSH_THEME="agnoster"
#ZSH_THEME="terminalparty"
ZSH_THEME="theunraveler"
#ZSH_THEME="powerlevel9k/powerlevel9k" # Make sure this one installed.

# Powerlevel9k tweaks
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(rbenv vcs status root_indicator background_jobs history time)
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
#POWERLEVEL9K_SHORTEN_STRATEGY=truncate_folders
#POWERLEVEL9K_SHORTEN_DELIMITER=""

# Plugins ~/.oh-my-zsh/plugins/*
plugins=(git kitchen aws knife docker terraform vagrant)

# Aliases and Functions
source $ZSH/oh-my-zsh.sh

# User configuration
source $HOME/.aliases
source $HOME/.functions

# Set Chef env variables for zsh
eval "$(chef shell-init zsh)"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
if [ -f /usr/local/bin/wal ]; then
    (cat ~/.cache/wal/sequences &)
fi

# Path to your oh-my-zsh installation.
export ZSH=/home/alex/.oh-my-zsh

# Theme
#ZSH_THEME="robbyrussell"
#ZSH_THEME="kolo"
#ZSH_THEME="pygmalion"
ZSH_THEME="theunraveler"

# Plugins ~/.oh-my-zsh/plugins/*
plugins=(git tmux kitchen man)

# Aliases and Functions
source $ZSH/oh-my-zsh.sh

# User configuration
source $HOME/.aliases

# Invoke Powerline
if [[ -r /usr/share/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/share/powerline/bindings/zsh/powerline.zsh
fi

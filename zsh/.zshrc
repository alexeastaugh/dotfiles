# Path to your oh-my-zsh installation.
export ZSH=/home/alex/.oh-my-zsh

# Theme
#ZSH_THEME="robbyrussell"
#ZSH_THEME="kolo"
#ZSH_THEME="pygmalion"
#ZSH_THEME="theunraveler"
ZSH_THEME="agnoster"

# Plugins ~/.oh-my-zsh/plugins/*
plugins=(git tmux kitchen)

# Aliases and Functions
source $ZSH/oh-my-zsh.sh

# User configuration
source $HOME/.aliases

# ChefDK Ruby
export PATH="/opt/chefdk/embedded/bin:$PATH"

if [ -f /usr/local/bin/wal ]; then
  # Import colorscheme from 'wal'
  # &   # Run the process in the background.
  # ( ) # Hide shell job control messages.
  (wal -r &)
fi

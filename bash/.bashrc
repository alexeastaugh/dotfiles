# Alex Eastaugh  ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# ANSI prompt
PS1='\n\033[0;37;40m\u @ \h\033[m \033[35m\w\033[m > '

# History
HISTCONTROL=ignoreboth # Ignore duplicates AND commands that start with spaces (ignorespace, ignoredups)
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=2000

# Bash completion
if ! shopt -oq posix; then                                                                         
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

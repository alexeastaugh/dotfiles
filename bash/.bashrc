# Alex Eastaugh  ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Prompt is red if switched to root (sudo -s)
if [ $(id -u) -eq 0 ];
then
    # Root version
    PS1='\033[1;37;41m\u@\h\033[m \033[35m\w\033[m # '
else
    # Default
    PS1='\033[0;37;46m\u\033[m\033[1;32m$(__git_ps1 " (%s)")\033[m \033[36m\h \033[m\033[35m\w\033[m > '
    # Testing
    #PS1='\n\033[1;36m\h\033[m\n\033[0;37m\u\033[m\033[1;32m$(__git_ps1 " (%s)")\033[m \033[35m\w\033[m > '
fi

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

# Alex Eastaugh  ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Prompt
export PS1="\[$(tput setaf 7)\][\[$(tput setaf 5)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 5)\]\h \[$(tput setaf 2)\]\w\[$(tput setaf 7)\]]\\$ \[$(tput sgr0)\]"

# History
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=10000
#HISTFILESIZE=2000

# Bash completion
if ! shopt -oq posix; then                                                                         
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Alex Eastaugh  ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Auto Colour
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Alias's
alias ..='cd ..'
alias ll='ls -l'
alias la='ls -lA'
alias ping='ping -c 4'

# Prompt
#PS1='[\u@\h \W]\$ '
export PS1="\[$(tput setaf 7)\][\[$(tput setaf 5)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 5)\]\h \[$(tput setaf 2)\]\W\[$(tput setaf 7)\]]\\$ \[$(tput sgr0)\]"

# Checks if Screenfetch is installed and if it is runs it.
if [[ -e /usr/bin/screenfetch ]]; then
    /usr/bin/screenfetch
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then                                                                         
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

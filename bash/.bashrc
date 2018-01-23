# Alex Eastaugh  ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Prompt is red if switched to root (sudo -s)
if [ $(id -u) -eq 0 ];
then
    # Root version
    PS1='\033[1;37;41m\u@\h\033[m \033[35m\w\033[m # '
else
    # Default
    #PS1='\033[0;37;46m\u\033[m \033[36m\h \033[m\033[35m\w\033[m > '
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi

# History
HISTCONTROL=ignoreboth # Ignore duplicates AND commands that start with spaces (ignorespace, ignoredups)
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=2000
HISTTIMEFORMAT="%d/%m/%y %T "

# Bash completion
if ! shopt -oq posix; then                                                                   
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# ChefDK Ruby path
export PATH="/opt/chefdk/embedded/bin:$PATH"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Colour palette entries for gnome terminal colours. This is just for reference if applying manually
#363333 - Palette entry 1
#DE5F5F - Palette entry 2
#82B882 - Palette entry 3
#CCCC66 - Palette entry 4
#7EA2C5 - Palette entry 5
#B88AB8 - Palette entry 6
#77CCCC - Palette entry 7
#E5E5E5 - Palette entry 8

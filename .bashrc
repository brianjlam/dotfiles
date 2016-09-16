# ~/.bashrc

# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

# Prompt
PS1='\[\e[1;32m\]\u@\h \[\e[0m\]\W\[\e[1;32m\]\$\[\e[0m\] '

# Aliases
alias c='clear'
alias cll='clear && ls -l --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias n='nautilus .'
alias vi='vim'
alias lmp_serial='~/packages/lammps/src/lmp_serial'
alias ...='../../'
alias ....='../../../'

shopt -s autocd

# Bash Calculator
=() { 					# Define function '='
	bc -l <<< "scale=10;$@"
}

# Allow ibus usage.
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Open new tabs in current directory.
if [ -e /etc/profile.d/vte.sh ]; then
	. /etc/profile.d/vte.sh
fi

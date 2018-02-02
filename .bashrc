# ~/.bashrc

# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

# Prompt
lightgreen='\e[1;32m'
resetcolor='\e[0m'

PS1="\[${lightgreen}\]\u@\h \[${resetcolor}\]\W\[${lightgreen}\]🐳\[${resetcolor}\] "

# Title Bar
PROMPT_COMMAND='echo -ne "\e]0;$(pwd -P)\a"'

# Aliases
alias ipy='ipython -i'
alias c='clear'
alias cll='clear && ls -lh --group-directories-first --color=auto'
alias h='history'
alias ll='ls -lh --group-directories-first --color=auto'
alias ls='ls --color=auto'
alias n='nautilus .'
alias vi='vim'
alias lmp_serial='~/packages/lammps/src/lmp_serial'
alias ...='../../'
alias ....='../../../'
alias .....='../../../../'

shopt -s autocd
shopt -s checkwinsize

# Set default editor
export VISUAL=vim
export EDITOR=vim
export SUDO_EDITOR=vim

# Allow ibus usage.
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Open new tabs in current directory.
if [ -e /etc/profile.d/vte.sh ]; then
	. /etc/profile.d/vte.sh
fi

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi


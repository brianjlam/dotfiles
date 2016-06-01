# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# shortcut aliases 
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias c='clear'
shopt -s autocd

# with green prompt
PS1='\[\e[1;32m\]\u@\h \[\e[0m\]\W\[\e[1;32m\]\$\[\e[0m\] '

# allow ibus usage
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

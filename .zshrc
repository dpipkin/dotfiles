# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/daniel/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall



# Load antigen stuff
source /home/daniel/antigen/antigen.zsh

antigen use oh-my-zsh
antigen theme https://github.com/dpipkin/spaceship-zsh-theme spaceship
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle last-working-dir
antigen bundle command-not-found
antigen apply

# configure spaceship theme
export SPACESHIP_GOLANG_SHOW=false

# Use for Windows Subsystem vcXsrv
export DISPLAY=:0
export LIBGL_ALWAYS_INDIRECT=1

# Setup virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

# Setup miniconda
export PATH=/home/daniel/miniconda3/bin:$PATH

# Disable zsh globbing for pip
alias pip='noglob pip'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# import rvm function
source ~/.rvm/scripts/rvm

# use vim as default editor
export EDITOR=vim


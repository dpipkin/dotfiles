# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
zstyle :compinstall filename '/Users/danielpipkin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# list aliases
alias ll="ls -lhA"
alias la="ls -A"

# Load antigen stuff
source /Users/danielpipkin/antigen.zsh

antigen use oh-my-zsh
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle last-working-dir
antigen bundle command-not-found
antigen apply

# configure spaceship theme
export SPACESHIP_GOLANG_SHOW=false

# use vim as default editor
export EDITOR=vim

# alias brew commands
alias ctags="`brew --prefix`/bin/ctags"


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# fix rake stuff
alias rake='noglob rake'
alias bundle='noglob bundle'

# too many bundle executes
alias bx='bundle exec'

# anaconda
# added by Anaconda3 4.3.1 installer
export PATH="/Users/danielpipkin/anaconda/bin:$PATH"

# added by Miniconda3 4.3.11 installer
export PATH="/Users/danielpipkin/miniconda3/bin:$PATH"

# use typora from the shell
alias typora="open -a typora"

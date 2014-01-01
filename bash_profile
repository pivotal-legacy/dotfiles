#==========================================================================
# define colors
#==========================================================================
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[35m\]"
DARK_GRAY="\[\033[1;30m\]"
DEFAULT="\[\e[0m\]"

#==========================================================================
# aliases
#==========================================================================
alias ls="ls -A"
alias ll="ls -lh"
alias j="jobs"
alias t="tmux"
alias irc="weechat-curses"
alias v="vim"
alias e="emacs"
alias rgl="rvm gemset list"
alias rgu="rvm gemset use"
alias startgres="postgres -D /usr/local/var/postgres"
#==========================================================================
# Source bashrc
#==========================================================================
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

#==========================================================================
# basic settings
#==========================================================================

# set default editor
export EDITOR=vim

# Make ls use colors
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

# tell compiler to always assume 64 bits
export ARCHFLAGS="-arch x86_64"

#==========================================================================
# prompt
#==========================================================================
# assign new colorized prompt
export PS1='\[\033[0;34m\]\u: \W\[\033[35m\]$(__git_ps1) \[\e[0m\]\$ '

# assign new colored root prompt
export SUDO_PS1="\[\e[33;1;41m\][\u] #\[\e[0m\] "

source ~/.aliases
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

# user 256 colors
export TERM=xterm-256color

# tell compiler to always assume 64 bits
export ARCHFLAGS="-arch x86_64"

#==========================================================================
# Git
#==========================================================================

# setup git prompt function, i.e., __git_ps1
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

function dirty_state {
    [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}

#==========================================================================
# prompt
#==========================================================================

# assign new colorized prompt
export PS1='\u@\h\[\033[0;32m\]$(__git_ps1)$(dirty_state)\[\033[0;33m\] $\[\e[0m\] '

# assign new colored root prompt
export SUDO_PS1="\[\e[33;1;41m\][\u] #\[\e[0m\] "

#==========================================================================
# History
#==========================================================================

export HISTCONTROL=erasedups # remove duplicates
export HISTSIZE=10000 # increase the size
shopt -s histappend # append session commands to .bash_history

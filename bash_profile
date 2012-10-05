# define colors
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[35m\]"
DARK_GRAY="\[\033[1;30m\]"
DEFAULT="\[\e[0m\]"

# aliases
alias ls="ls -a"
alias ll="ls -lh"
alias startgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stopgres="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# Commands for virtualenv
export WORKON_HOME=~/envs
alias activate="source $WORKON_HOME/py-env0/bin/activate && source $WORKON_HOME/py-env0/bin/virtualenvwrapper.sh"

# Make ls use colors
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

# tell compiler to always assume 64 bits
export ARCHFLAGS="-arch x86_64"

# rearrange path for homebrew
export PATH=/usr/local/bin:$PATH

# setup bash completion for homebrew
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

# setup git prompt function
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

# have git prompt note uncommitted changes
GIT_PS1_SHOWDIRTYSTATE=true

# Add rvm to bash session
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# load rvm bash completion
[[ -r $rvm_path/scripts/completion ]] && source $rvm_path/scripts/completion

# load pythonbrew to bash session
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

# Add the bit below for ruby version@gemset for prompt
# $YELLOW\$(~/.rvm/bin/rvm-prompt)

# assign new colorized prompt
# export PS1="$GREEN\w$(__git_ps1) $DARK_GRAY\$$DEFAULT "
export PS1='\[\033[0;32m\]\w\[\033[0;33m\]$(__git_ps1) \[\033[1;30m\]\$ \[\e[0m\]'

# assign new colored root prompt
export SUDO_PS1="\[\e[33;1;41m\][\u] #\[\e[0m\] "

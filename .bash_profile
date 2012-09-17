# define colors
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[35m\]"
DARK_GRAY="\[\033[1;30m\]"
DEFAULT="\[\e[0m\]"

# Add rvm to bash session
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# load rvm bash completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# Add the bit below for ruby version@gemset
# $YELLOW\$(~/.rvm/bin/rvm-prompt)

# assign new colorized prompt
export PS1="$GREEN\w$DEFAULT $DARK_GRAY\$$DEFAULT "

# assign new colored root prompt
export SUDO_PS1="\[\e[33;1;41m\][\u] #\[\e[0m\] "

# rearrange path for homebrew
export PATH=/usr/local/bin:$PATH

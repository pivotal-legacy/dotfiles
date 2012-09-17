# define colors
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[35m\]"
DARK_GRAY="\[\033[1;30m\]"
DEFAULT="\[\e[0m\]"

# rearrange path for homebrew
export PATH=/usr/local/bin:$PATH

# setup bash completion for homebrew
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Add rvm to bash session
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# load rvm bash completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# Function to assemble the Git parsingart of our prompt.
git_prompt ()
{
  if ! git rev-parse --git-dir > /dev/null 2>&1; then
    return 0
  fi

  git_branch=$(git branch 2>/dev/null | sed -n '/^\*/s/^\* //p')

  if git diff --quiet 2>/dev/null >&2; then
    git_color="$GREEN"
  else
    git_color="$RED"
  fi

  echo "[$git_color$git_branch${GREEN}]"
}

# Add the bit below for ruby version@gemset for prompt
# $YELLOW\$(~/.rvm/bin/rvm-prompt)

# assign new colorized prompt
export PS1="$GREEN\w $(git_prompt) $DARK_GRAY\$$DEFAULT "

# assign new colored root prompt
export SUDO_PS1="\[\e[33;1;41m\][\u] #\[\e[0m\] "


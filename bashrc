#==========================================================================
# Heroku toolbelt
#==========================================================================

export PATH="/usr/local/heroku/bin:$PATH"

#==========================================================================
# Homebrew
#==========================================================================

# rearrange path for homebrew
export PATH=/usr/local/bin:$PATH

# setup bash completion for homebrew
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

#==========================================================================
# Git
#==========================================================================

# setup git prompt function
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

# have git prompt note uncommitted changes
GIT_PS1_SHOWDIRTYSTATE=true

#==========================================================================
# npm and node
#==========================================================================

export PATH=/usr/local/share/npm/bin:$PATH
export NODE_PATH=/usr/local/lib/node_modules

#==========================================================================
# Android dev
#==========================================================================

export ANDROID_HOME='/usr/local/Cellar/android-sdk/22.2.1'

#==========================================================================
# Go
#==========================================================================

export PATH=$PATH:/usr/local/Cellar/go/1.2/libexec/bin

#==========================================================================
# RVM
#==========================================================================

PATH=$HOME/.rvm/bin:$PATH

# Add rvm to bash session
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# load rvm bash completion
[[ -r $rvm_path/scripts/completion ]] && source $rvm_path/scripts/completion

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

# global environment varilables
GOROOT="/usr/local/Cellar/go/1.2/libexec/"
GOPATH="$HOME/dev/go"
NODE_PATH="/usr/local/lib/node_modules"

# various path assignments
GO="$GOPATH/bin:/usr/local/Cellar/go/1.2/libexec/bin"
HEROKU="/usr/local/heroku/bin"
HOMEBREW="/usr/local/bin"
NPM="/usr/local/share/npm/bin"
RBENV="$HOME/.rbenv/bin"

export GOROOT
export GOPATH
export NODE_PATH
export PATH="$RBENV:$NPM:$GO:$HEROKU:$HOMEBREW:$PATH"

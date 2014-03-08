# global environment variables
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

# global environment variables
GOROOT="/usr/local/Cellar/go/1.4.2/libexec"
GOPATH="$HOME/workspace/go"
GOBIN="$GOROOT/bin"

# various path assignments
GO="$GOPATH/bin:$GOROOT/bin"
HOMEBIN="$HOME/bin"
NPM="/usr/local/lib/node_modules"
NPM_BIN="$PWD/node_modules/.bin"

export GOROOT
export GOPATH
export PATH="$NPM_BIN:$NPM:$GO:$HOMEBIN:$PATH"

# global environment variables
GOROOT="/usr/local/Cellar/go/1.4/libexec"
GOPATH="$HOME/code/go"

# various path assignments
GO="$GOPATH/bin:$GOROOT/bin"
HOMEBIN="$HOME/bin"
NPM="/usr/local/lib/node_modules"
NPM_BIN="$PWD/node_modules/.bin"

export GOROOT
export GOPATH
export PATH="$NPM_BIN:$NPM:$GO:$HOMEBIN:$PATH"

# global environment variables
GOROOT="/usr/local/Cellar/go/1.3/libexec/"
GOPATH="$HOME/dev/go"

# various path assignments
GO="$GOPATH/bin:/usr/local/Cellar/go/1.3/libexec/bin"
HOMEBREW="/usr/local/bin"
RBENV="$HOME/.rbenv/bin"
HOMEBIN="$HOME/bin"

export GOROOT
export GOPATH
export PATH="$RBENV:$HOMEBREW:$GO:$HOMEBIN:$PATH"

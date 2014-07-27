# global environment variables
GOROOT="/usr/local/Cellar/go/1.3/libexec/"
GOPATH="$HOME/dev/go"
NODE_PATH="/usr/local/lib/node_modules"
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_55.jdk/Contents/Home"
CLOJURESCRIPT_HOME="/Users/eno/dev/clojurescript"

# various path assignments
GO="$GOPATH/bin:/usr/local/Cellar/go/1.3/libexec/bin"
HEROKU="/usr/local/heroku/bin"
HOMEBREW="/usr/local/bin"
NPM="/usr/local/share/npm/bin"
RBENV="$HOME/.rbenv/bin"
CLOJURESCRIPT="$CLOJURESCRIPT_HOME/bin"

export GOROOT
export GOPATH
export NODE_PATH
export PATH="$RBENV:$HOMEBREW:$CLOJURESCRIPT:$NPM:$GO:$HEROKU:$JAVA_HOME:$PATH"

# global environment variables
export JAVA_HOME=$(/usr/libexec/java_home)

# various path assignments
HOMEBIN="$HOME/bin"
NPM="/usr/local/lib/node_modules"
NPM_BIN="$PWD/node_modules/.bin"

export PATH="$NPM_BIN:$NPM:$HOMEBIN:$PATH"

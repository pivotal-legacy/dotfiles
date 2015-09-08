# global environment variables
export JAVA_HOME=$(/usr/libexec/java_home)
export GIT_DUET_ROTATE_AUTHOR=1

# various path assignments
HOMEBIN="$HOME/bin"
NPM="/usr/local/lib/node_modules"
NPM_BIN="$PWD/node_modules/.bin"

export PATH="$NPM_BIN:$NPM:$HOMEBIN:$PATH"

. ~/.aliases

. ~/.functions

PROMPT=$'%B%n@%m %~ > %b'

export EDITOR=vim
export VISUAL=vim

export GREP_OPTIONS=' — color=auto'

export PATH="/usr/lib/ccache/bin/:$PATH"
export GOPATH=$HOME/Dropbox/stuff/other/code/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

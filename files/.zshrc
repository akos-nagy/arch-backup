alias ls='exa -hal --group-directories-first'

PROMPT=$'%B%n@%m %~ > %b'

export EDITOR=rnano
export VISUAL=rnano
export PATH="/usr/lib/ccache/bin/:$PATH"
export GOPATH=$HOME/Dropbox/stuff/other/code/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export MY_GIT_TOKEN=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

autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

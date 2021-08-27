alias ls='exa -hal --group-directories-first'

PROMPT=$'%B%n@%m %~ > %b'

export EDITOR=rnano
export VISUAL=rnano
export PATH="/usr/lib/ccache/bin/:$PATH"
export GOPATH=$HOME/Dropbox/stuff/other/code/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export MY_GIT_TOKEN=49e6d66a7fd9d37629030e95c358209aa82aba4a

autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
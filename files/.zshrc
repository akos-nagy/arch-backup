alias ls='exa -hal --group-directories-first'

PROMPT=$'%B%n@%m %~ > %b'

export EDITOR=rnano

export VISUAL=rnano

export PATH="/usr/lib/ccache/bin/:$PATH"

autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

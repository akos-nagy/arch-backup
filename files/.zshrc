. ~/.aliases

. ~/.functions

PROMPT=$'%B%n@%m %~ > %b'

export EDITOR=rnano
export VISUAL=rnano

export GREP_OPTIONS=' — color=auto'

export PATH="/usr/lib/ccache/bin/:$PATH"
export PATH=$PATH:~/.local/bin

export QT_QPA_PLATFORM=wayland

autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
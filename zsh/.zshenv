#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

export TERMCMD=urxvt
export RANGER_LOAD_DEFAULT_RC=FALSE
export EDITOR=vim

# source alias so they work in vim :!...
source $HOME/.config/aliases.zsh

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

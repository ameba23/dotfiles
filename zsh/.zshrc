#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

eval "$(fasd --init auto)"

export EDITOR=vim
export COLORTERM=urxvt
export MPD_HOST=$HOME/.mpd/socket

# dynamically set terminal window title:
case $TERM in
  (xterm*|*rxvt*)
    #precmd () {print -Pn "e]0;%n@%m: %~a"}
    # Write some info to terminal title.
    # This is seen when the shell prompts for input.
    function precmd {
        print -Pn "\e]0;%(1j,%j job%(2j|s|); ,)%~\a"
    }
    # Write command and args to terminal title.
    # This is seen while the shell waits for a command to complete.
    function preexec {
        printf "\033]0;%s\a" "$1"
    }
    ;;
esac

autoload zmv

#for config_file ($HOME/.yadr/zsh/*.zsh) source $config_file
source $HOME/.config/aliases.zsh

# vim-style keybindings (does prezto already do this?)
bindkey -v

# bind Ctrl-R to reverse history search
bindkey '^R' history-incremental-search-backward


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

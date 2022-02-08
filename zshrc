export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

export HISTFILE=~/.histfile
export HISTSIZE=1000
export SAVEHIST=1000
export HISTCONTROL=ignoredups
setopt inc_append_history
setopt share_history
bindkey -e

zstyle :compinstall filename '/home/colin/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

source $HOME/.config/zsh/prompt
source $HOME/.config/zsh/alias

LIBDIR=$HOME/development/lib
SOURCEDIR=$HOME/development/src

for f in $HOME/.config/zsh/env/*.enabled; do
  source $f
done

EDITOR=vim

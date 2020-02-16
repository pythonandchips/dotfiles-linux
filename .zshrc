PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

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

source $HOME/.dotfiles/.zsh-prompt
source $HOME/.dotfiles/.zsh-alias
source $HOME/.dotfiles/.flatpak-alias


LIBDIR=$HOME/development/lib
SOURCEDIR=$HOME/development/src

for f in $HOME/.dotfiles/env/*; do
  source $f
done

EDITOR=vim

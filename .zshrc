PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

zstyle :compinstall filename '/home/colin/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

source $HOME/.dotfiles/.zsh-prompt
source $HOME/.dotfiles/.zsh-alias


LIBDIR=$HOME/development/lib

for f in $HOME/.dotfiles/env/*; do
  source $f
done

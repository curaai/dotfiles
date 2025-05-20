#!/bin/bash

ZSH="$HOME/.dotfiles/.oh-my-zsh"
ZSH_CUSTOM="$ZSH/custom"

if [ ! -d "$ZSH_CUSTOM" ]; then
  mkdir -p $ZSH_CUSTOM
fi

path="$ZSH_CUSTOM/plugins/zsh-autosuggestions"
if [ ! -d "$path" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions $path
fi

path="$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
if [ ! -d "$path" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting $path
fi

path="$ZSH_CUSTOM/plugins/fzf-tab"
if [ ! -d "$path" ]; then
  git clone https://github.com/Aloxaf/fzf-tab $path
fi

path="$ZSH_CUSTOM/plugins/zsh-completions"
if [ ! -d "$path" ]; then
  git clone https://github.com/zsh-users/zsh-completions $path
fi

path="$ZSH_CUSTOM/themes/powerlevel10k"
if [ ! -d "$path" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $path
fi


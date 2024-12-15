#!/bin/bash
DIR=$(dirname $(realpath $0))
echo "$DIR"
OH_MY_TMUX_DIR="$HOME/oh_my_tmux"
if [ -d "$OH_MY_TMUX_DIR" ]; then
  rm -rf $OH_MY_TMUX_DIR
fi
if [ -f "$HOME/.tmux.conf" ] && [ -f "$HOME/.tmux.conf.local" ]; then
  rm -rf .tmux.*
fi
if [ -d "$HOME/.config/tmux" ]; then
  rm -rf $HOME/.config/tmux
fi
mkdir -p "$HOME"/oh_my_tmux
mkdir -p ~/.config/tmux

git clone https://github.com/p1anx/.tmux.git $OH_MY_TMUX_DIR
ln -s $OH_MY_TMUX_DIR/.tmux.conf ~/.config/tmux/tmux.conf
cp $OH_MY_TMUX_DIR/.tmux.conf.local ~/.config/tmux/tmux.conf.local
echo "tmux is OK"

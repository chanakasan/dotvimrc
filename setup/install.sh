#!/usr/bin/env bash

main() {
  echo "=> Installing vimrc ..."
  mkdir -p $HOME/.vim
  ln -nfs $HOME/nex-dotvim/src/vimrc.vim $HOME/.vimrc 
  ln -nfs $HOME/nex-dotvim/src/gvimrc.vim $HOME/.gvimrc 
  ln -nfs $HOME/nex-dotvim/src/colors $HOME/.vim/colors 
  ln -nfs $HOME/nex-dotvim/src/plugin $HOME/.vim/plugin 

  echo "=> Installing Vim Plug"
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  echo "=> Done"
  echo ""
}

main

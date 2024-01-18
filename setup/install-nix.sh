#!/usr/bin/env bash

main() {
  echo " Installing - Nex Vim"
  
  ln -nfs $HOME/nex-vim/src/vimrc.vim $HOME/.vimrc 
  ln -nfs $HOME/nex-vim/src/gvimrc.vim $HOME/.gvimrc 
  mkdir -p $HOME/.vim
  ln -nfs $HOME/nex-vim/src/colors $HOME/.vim/colors 
  ln -nfs $HOME/nex-vim/src/plugin $HOME/.vim/plugin 

  install_vim_plug

  echo ""
  echo " done"
  echo ""
}

install_vim_plug() {
    echo " => installing vim plug"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}
main

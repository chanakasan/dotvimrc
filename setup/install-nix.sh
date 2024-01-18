#!/bin/bash

main() {
  local title="Nex Vim"
  local dir_name="nex-vim"
  local start_text='__nex_vim_start'
  local end_text='__nex_vim_end'
  local bashrc="$HOME/.bashrc"
  local nex_vim_path=$(get_root_path)/$dir_name
  echo " Installing - $title"
  
  ln -nfs $nex_vim_path/src/vimrc.vim $HOME/.vimrc 
  ln -nfs $nex_vim_path/src/gvimrc.vim $HOME/.gvimrc 
  mkdir -p $HOME/.vim
  ln -nfs $nex_vim_path/src/colors $HOME/.vim/colors 
  ln -nfs $nex_vim_path/src/plugin $HOME/.vim/plugin 

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

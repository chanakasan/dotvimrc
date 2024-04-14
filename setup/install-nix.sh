#!/bin/bash

set -e

bash $nex_support/plugin/install/run_default.sh "vim"
nex_vim_path=$nex_plugin_base/vim.plugin

steps() {
  local root_dir=$HOME
  create_symlinks
  download_vim_plug
}

create_symlinks() {
  ln -nfs $nex_vim_path/src/vimrc.vim $root_dir/.vimrc 
  ln -nfs $nex_vim_path/src/gvimrc.vim $root_dir/.gvimrc 
  mkdir -p $root_dir/.vim
  ln -nfs $nex_vim_path/src/colors $root_dir/.vim/colors 
  ln -nfs $nex_vim_path/src/plugin $root_dir/.vim/plugin 
}

download_vim_plug() {
    echo " => downloading vim plug"
    curl -fLo $root_dir/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

steps

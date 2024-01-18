#!/bin/bash

set -e

main() {
  local title="Nex Tmux"
  local dir_name="nex-tmux"
  local start_text='__nex_tmux_start'
  local end_text='__nex_tmux_end'
  local bashrc="$HOME/.bashrc"
  local nex_tmux_path=$(get_root_path)/$dir_name
  echo " Installing - $title"
  remove_from_bashrc
  copy_to_bashrc
  create_symlinks
  echo ""
  echo " done"
  echo ""
}

create_symlinks() {
  ln -nfs $nex_tmux_path/src/main.conf $HOME/.tmux.conf
}

get_root_path() {
  local user=$(whoami)
  if [ "$user" = "codespace" ]; then
    echo /workspaces/.codespaces/.persistedshare
  else
    echo $HOME/dotfiles
  fi
}

remove_from_bashrc() {
  sed -i '/#'$start_text'/,/#'$end_text'/{d}' $bashrc
}

copy_to_bashrc() {
  echo "" >> $bashrc
  echo "#$start_text" >> $bashrc
  echo 'export nex_tmux_path='$nex_tmux_path >> $bashrc
  echo 'export PATH=$nex_tmux_path/bin:$PATH' >> $bashrc
  echo "#$end_text" >> $bashrc
  echo "" >> $bashrc
}

# _end_
main

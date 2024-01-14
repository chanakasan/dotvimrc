# Run from Git Bash
# sh install-win.sh

main() {
  echo ""
  echo " uninstalling vim"
  echo " => create symlinks"
  rm -i -r ~/.vimrc
  rm -i -r ~/.gvimrc
  mv ~/.vim ~/.vim.old-1

  echo ""
  echo " done"
}

main
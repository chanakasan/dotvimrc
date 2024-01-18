# Run from Git Bash
# sh install-win.sh

main() {
  echo ""
  echo " uninstalling vim"
  rm -i -r ~/.vimrc
  rm -i -r ~/.gvimrc
  mv ~/.vim ~/old-vimfiles-1

  echo ""
  echo " done"
}

main
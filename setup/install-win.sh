# Run from Git Bash
# sh install-win.sh


main() {
  echo ""
  echo " Installing vim"
  echo " => create symlinks"
  # .vimrc
  powershell.exe "cmd.exe /c mklink %HOME%\.vimrc %HOME%\nex-vim\src\vimrc.vim"
  # .vim
  powershell.exe "mkdir -p \$env:HOME\.vim"
  powershell.exe "cmd.exe /c mklink /d %HOME%\.vim\colors %HOME%\nex-vim\src\colors"
  powershell.exe "cmd.exe /c mklink /d %HOME%\.vim\plugin %HOME%\nex-vim\src\plugin"

  # for gvim
  powershell.exe "cmd.exe /c mklink /d %HOME%\vimfiles %HOME%\.vim"
  powershell.exe "cmd.exe /c mklink %HOME%\.gvimrc %HOME%\nex-vim\src\gvimrc.vim"

  install_vim_plug

  echo ""
  echo "done"
}


install_vim_plug() {
    echo " => installing vim plug"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

main
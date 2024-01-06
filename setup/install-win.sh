# Run from Git Bash
# sh install-win.sh

main() {
  powershell.exe "mkdir -p \$env:HOME\.vim"
  powershell.exe "cmd.exe /c mklink %HOME%\.vimrc %HOME%\nex-dotvim\src\vimrc.vim"
  powershell.exe "cmd.exe /c mklink %HOME%\.gvimrc %HOME%\nex-dotvim\src\gvimrc.vim"
  powershell.exe "cmd.exe /c mklink /d %HOME%\vimfiles %HOME%\.vim"
  powershell.exe "cmd.exe /c mklink /d %HOME%\.vim\colors %HOME%\nex-dotvim\src\colors"
  powershell.exe "cmd.exe /c mklink /d %HOME%\.vim\plugin %HOME%\nex-dotvim\src\plugin"

  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  echo "Done"
  echo ""
}
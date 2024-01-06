# Run from Git Bash
# sh install-win.sh

powershell.exe "mkdir -p \$env:HOME\.vim"
powershell.exe "cmd.exe /c mklink %HOME%\.vimrc %HOME%\chk-vimrc\vimrc.vim"
powershell.exe "cmd.exe /c mklink %HOME%\.gvimrc %HOME%\chk-vimrc\gvimrc.vim"
powershell.exe "cmd.exe /c mklink /d %HOME%\vimfiles %HOME%\.vim"
powershell.exe "cmd.exe /c mklink /d %HOME%\.vim\colors %HOME%\chk-vimrc\colors"
powershell.exe "cmd.exe /c mklink /d %HOME%\.vim\plugin %HOME%\chk-vimrc\plugin"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Done"
echo ""

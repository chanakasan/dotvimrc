
mkdir -p ~/.vim
cd ~
powershell.exe "cmd.exe /c mklink .vimrc '~/chk-vimrc/vimrc.vim'"
powershell.exe "cmd.exe /c mklink .gvimrc '~/chk-vimrc/gvimrc.vim'"
powershell.exe "cmd.exe /c mklink /d vimfiles .vim"

cd ~/.vim
powershell.exe "cmd.exe /c mklink /d colors '~/chk-vimrc/colors'"
powershell.exe "cmd.exe /c mklink /d plugin '~/chk-vimrc/plugin'"
cd ~

#!/usr/bin/env bash

echo "=> Installing vimrc ..."
mkdir -p $HOME/.vim
ln -nfs $HOME/chk-vimrc/vimrc.vim $HOME/.vimrc 
ln -nfs $HOME/chk-vimrc/gvimrc.vim $HOME/.gvimrc 
ln -nfs $HOME/chk-vimrc/colors $HOME/.vim/colors 
ln -nfs $HOME/chk-vimrc/plugin $HOME/.vim/plugin 

echo "=> Installing Vim Plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "=> Done"
echo ""


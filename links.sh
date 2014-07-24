#!/bin/bash
echo "Instructions powerline fonts-....http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin"
echo "Clone vim bundle"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Compile You Complete Me plugin"
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
echo "Create the links"

ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/bash_functions ~/.bash_functions
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore_global ~/.gitignore_global


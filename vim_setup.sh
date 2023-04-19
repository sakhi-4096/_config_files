#!/bin/sh

# Install vim and YouCompleteMe with clang completion
mkdir -p ~/.vim
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'qa!'
cd ~/.vim/bundle/YouCompleteMe/
python3 install.py --clang-completer

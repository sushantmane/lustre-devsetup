#!/bin/bash
mkdir -p  ~/.vim/syntax
mkdir -p ~/.vim/ftdetect
curl -kL https://raw.githubusercontent.com/sushantmane/lustre-devsetup/master/vim-plugins/.vim/ftdetect/lctl.vim > ~/.vim/ftdetect/lctl.vim
curl -kL https://raw.githubusercontent.com/sushantmane/lustre-devsetup/master/vim-plugins/.vim/syntax/lctl.vim > ~/.vim/syntax/lctl.vim

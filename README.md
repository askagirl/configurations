---
Title: Kenny's Configuration Files
Description: Configuration Files like .vimrc
Author: Kenny
Created: 2012 Dec 28
Modified: 2012 Dec 28

---

.vimrc
======================

set nocompatible
Pathogen Plugin Enabled.
syntax enable
fenc utf-8
fencs utf-8,cp949,cp932,euc-jp,shift-jis,big5,latin1,ucs2-le
NERD commenter Plugin Enabled.
colorscheme solarized

.tmux.conf
======================

set terminal to screen-256color
solarized dark color scheme applied.

fritz
======================
* https://github.com/tpope/vim-pathogen
* https://github.com/altercation/vim-colors-solarized
* https://github.com/tpope/vim-rails
* https://github.com/scrooloose/nerdtree
* https://github.com/tpope/vim-abolish
* https://github.com/tpope/vim-bundler

powerline

  http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin

git submodule add https://github.com/scrooloose/nerdtree.git vimrc/bundle/nerdtree

git submodule add git://github.com/tpope/vim-abolish.git vimrc/bundle/vim-abolish

cp -R vimrc/bundle/* ~/.vim/bundle


mkdir -p ~/.vim/autoload; \

curl -Sso ~/.vim/autoload/pathogen.vim \

  https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim


  ln -s ~/configurations/tmux/tmux.conf ~/.tmux.conf
  
  ln -s ~/configurations/vimrc/vimrc ~/.vimrc
  
  ln -s ~/configurations/vimrc/bundle ~/.vim/bundle


==========================
sudo apt-get install vim git tmux

TODO
===============================
* http://sjl.bitbucket.org/gundo.vim/#requirements
* https://github.com/gmarik/Vundle.vim 설치

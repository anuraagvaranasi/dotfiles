#!/bin/bash

#first make sure git and cmake are installed
sudo apt-get update 
sudo apt-get install git
sudo apt-get install cmake --fix-missing

#vim stuff
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
#first add auto pairs (for brackets etc)
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs > /dev/null 2>&1
cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git > /dev/null 2>&1
cd YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer
python3 install.py

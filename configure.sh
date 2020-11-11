#!/bin/bash

DOT_VIMRC_AUTOLOAD_DIR="$HOME/.vim/autoload/"
DOT_VIMRC_BUNDLE_DIR="$HOME/.vim/bundle/"

mkdir -p $DOT_VIMRC_AUTOLOAD_DIR
mkdir -p $DOT_VIMRC_BUNDLE_DIR

curl -LSso "${DOT_VIMRC_AUTOLOAD_DIR}/pathogen.vim" "https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim" 

cp ./dot-vimrc ~/.vimrc

pushd $DOT_VIMRC_BUNDLE_DIR
git clone https://github.com/vim-airline/vim-airline vim-airline
git clone https://github.com/venantius/vim-cljfmt.git vim-cljfmt
git clone https://github.com/tpope/vim-commentary vim-commentary
git clone https://github.com/ctrlpvim/ctrlp.vim.git vim-ctrlp
git clone https://github.com/tpope/vim-fireplace.git vim-fireplace
git clone https://github.com/scrooloose/nerdtree.git vim-nerdtree
git clone https://github.com/kien/rainbow_parentheses.vim.git vim-rainbow-parentheses
git clone https://github.com/tpope/vim-sensible.git vim-sensible
git clone https://github.com/guns/vim-sexp.git vim-sexp
git clone https://github.com/tpope/vim-sexp-mappings-for-regular-people.git vim-sexp-mappings-for-regular-people
git clone https://github.com/kshenoy/vim-signature.git vim-signature
git clone https://github.com/tpope/vim-surround.git vim-surround
git clone https://github.com/vim-syntastic/syntastic.git vim-syntastic
git clone https://github.com/MattesGroeger/vim-bookmarks.git vim-bookmarks
popd


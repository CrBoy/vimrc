#!/bin/sh

VIMFILES=~/.vim
VIMRC=~/.vimrc

die(){
	echo "$1" >&2
	exit 1
}

cd "$VIMFILES"

[ -e "$VIMRC" ] && die "$VIMRC already exists."

ln -s "$VIMFILES"/vimrc "$VIMRC"

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

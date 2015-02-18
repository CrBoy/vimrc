#!/bin/sh

VIMFILES=~/.vim
VIMRC=~/.vimrc

die(){
	echo "$1" >&2
	exit 1
}

cd "$VIMFILES"

# Install NeoBundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

[ -e "$VIMRC" ] && die "$VIMRC already exists."

ln -s "$VIMFILES"/vimrc "$VIMRC"


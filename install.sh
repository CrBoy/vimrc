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

# Install NeoBundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
vim -c "NeoBundleInstall" -c "q"


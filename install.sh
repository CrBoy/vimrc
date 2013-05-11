#!/bin/sh

VIMFILES=~/.vim
VIMRC=~/.vimrc

die(){
	echo "$1" >&2
	exit 1
}

[ -e "$VIMRC" ] && die "$VIMRC already exists."

ln -s "$VIMFILES"/vimrc "$VIMRC"
vim -c "BundleInstall" -c "qa"


#!/bin/sh

VIMFILES=~/.vim

die(){
	echo "$1" >&2
	exit 1
}

[ -e "$VIMFILES" ] && die "$VIMFILES already exists."

git clone --recursive https://github.com/CrBoy/vimrc.git "$VIMFILES"
cd "$VIMFILES"

./install.sh && echo "CrBoy's vimrc installed."


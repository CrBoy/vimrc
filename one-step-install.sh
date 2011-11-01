#!/bin/sh

VIMFILES=~/.vim

die(){
	echo "$1" >&2
	exit 1
}

[ -e "$VIMFILES" ] && die "$VIMFILES already exists."

git clone git://github.com/CrBoy/vimrc.git "$VIMFILES"
cd "$VIMFILES"
git submodule update --init

./install.sh && echo "CrBoy's vimrc installed."


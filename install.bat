@echo off

set HOME="%UserProfile%"
set VIMFILES="%UserProfile%\vimfiles"
set VIMRC="%UserProfile%\_vimrc"

echo �إ� autoload ��Ƨ�...
mkdir "%VIMFILES%\autoload"

echo �s�� pathogen...
mklink "%VIMFILES%\autoload\pathogen.vim" "..\bundle\pathogen\autoload\pathogen.vim"

echo �s�� vimrc...
mklink "%VIMRC%" "vimfiles\vimrc"

echo ����!!
pause

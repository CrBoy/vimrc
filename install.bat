@echo off

set HOME="%UserProfile%"
set VIMFILES="%UserProfile%\vimfiles"
set VIMRC="%UserProfile%\_vimrc"

echo 建立 autoload 資料夾...
mkdir "%VIMFILES%\autoload"

echo 連結 pathogen...
mklink "%VIMFILES%\autoload\pathogen.vim" "..\bundle\pathogen\autoload\pathogen.vim"

echo 連結 vimrc...
mklink "%VIMRC%" "vimfiles\vimrc"

echo 完成!!
pause

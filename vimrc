" CrBoy's vimrc file.

" display
set title
set number
set cursorline
set showmode
set showcmd
set ruler

" tab spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" convenient operation
set nocompatible
set autoread
set autoindent
set incsearch
set history=32
set backspace=indent,eol,start

" folding
set foldmethod=syntax
set foldlevel=10

" encodings
set fileencodings=utf-8,big5,latin1,utf-16,utf-16le
set encoding=utf-8
set termencoding=utf-8

" filetypes
filetype on
filetype plugin on
filetype indent on

" syntax highloght
syntax on
set t_Co=256
colorscheme desert

" status line
set laststatus=2
set statusline=%4*%<\ %1*[%F]
set statusline+=%4*\ %5*[%{&fileencoding}, " encoding
set statusline+=%{&fileformat}%{\"\".((exists(\"+bomb\")\ &&\ &bomb)?\",BOM\":\"\").\"\"}]%m
set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>
highlight User1 term=underline cterm=underline ctermfg=red
highlight User2 term=underline cterm=underline ctermfg=green
highlight User3 term=underline cterm=underline ctermfg=yellow
highlight User4 term=underline cterm=underline ctermfg=white
highlight User5 term=underline cterm=underline ctermfg=cyan
highlight User6 term=underline cterm=underline ctermfg=white

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

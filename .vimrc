" Load plug-ins
call plug#begin('~/.vim/plugged')

" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'tpope/vim-fugitive'
" Plug 'flazz/vim-colorschemes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'

call plug#end()

" Required:
filetype plugin indent on



" convenient operation
" --------------------
set nocompatible
set autoread
set autoindent
set incsearch
set history=32
set backspace=indent,eol,start
set clipboard=unnamed
set undofile
set undodir=~/.vim/undo
set listchars=tab:>-,eol:$

" command mode completion
" ----------------------------
set wildmode=full
set wildmenu

" display
" -------
set title
set number
set cursorline
set showmode
set showcmd
set ruler

" tab spaces
" ----------
set tabstop=4
set softtabstop=4
set shiftwidth=4

" folding
" -------
set foldmethod=syntax
set foldlevel=10

" encodings
" ---------
set fileencodings=utf-8,big5,utf-16,utf-16le,latin1
set encoding=utf-8
set termencoding=utf-8

" filetypes
" ---------
filetype plugin indent on

" syntax highlight
" ----------------
syntax on
set t_Co=256
colorscheme desert

" Spell checking for LaTeX files
autocmd FileType tex set spell

" vim-airline
" -----------
set laststatus=2
let g:airline_theme = "sol"
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#show_buffers = 0
"let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
"let g:airline#extensions#tabline#show_tab_nr = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#buffer_nr_format = '%s:'

" Plugin config
" =======

" NERDTree
nmap <leader>e :NERDTreeToggle<CR>

" Tagbar
" ------
"Bundle 'majutsushi/tagbar.git'
"nmap <leader>t :TagbarToggle<CR>
"let g:tagbar_autofocus = 1
"let g:tagbar_sort = 0

" snipMate
" --------
"Bundle 'msanders/snipmate.vim.git'
"let g:snippets_dir = "~/.vim/snippets/"

" Gist
" ----
"Bundle 'mattn/gist-vim.git'
"let g:gist_detect_filetype = 1


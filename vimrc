" CrBoy's vimrc file.

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
set fileencodings=utf-8,big5,latin1,utf-16,utf-16le
set encoding=utf-8
set termencoding=utf-8

" filetypes
" ---------
filetype on
filetype plugin on
filetype indent on

" syntax highlight
" ----------------
syntax on
set t_Co=256
colorscheme desert

" one-step compile/build
autocmd FileType c,cpp nmap <F9> :w<CR> :make<CR>
autocmd FileType c nmap <F5> :w<CR> :!gcc -Wall -g -o %:r %<CR> :!./%:r<CR>
autocmd FileType cpp nmap <F5> :w<CR> :!g++ -Wall -g -o %:r %<CR> :!./%:r<CR>

" Spell checking for LaTeX files
autocmd FileType tex set spell

" status line
" -----------
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

" tabline
" -------
function! MyTabLabel(n)
	let buflist = tabpagebuflist(a:n)
	let winnr = tabpagewinnr(a:n)
	if bufname(buflist[winnr - 1]) == ''
		return '[No Name]'
	else
		return bufname(buflist[winnr - 1])
endfunction

function! MyTabLine()
	let s = ''
	for i in range(tabpagenr('$'))
		" select the highlighting
		if i + 1 == tabpagenr()
			let s .= '%#TabLineSel#'
		else
			let s .= '%#TabLine#'
		endif

		" set the tab page number (for mouse clicks)
"		let s .= '%' . (i + 1) . 'T'

		let s .= ' ' . (i + 1)

		" the label is made by MyTabLabel()
		let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
	endfor

	" after the last tab fill with TabLineFill and reset tab page nr
	let s .= '%#TabLineFill#%T'

	" right-align the label to close the current tab page
	if tabpagenr('$') > 1
		let s .= '%=%#TabLine#%999X X '
	endif

	return s
endfunction

:set tabline=%!MyTabLine()

" pathogen
" --------
"let g:pathogen_disabled = []
"call add(g:pathogen_disabled, '')
call pathogen#infect()

" NERDTree
" --------
nmap <leader>e :NERDTreeToggle<CR>

" Tagbar
" ------
nmap <leader>t :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0

" snipMate
" --------
let g:snippets_dir = "~/.vim/snippets/"

" Gist
" ----
let g:gist_detect_filetype = 1

" neocomplcache
" -------------
let g:acp_enableAtStartup = 0 " Disable AutoComplPop.
let g:neocomplcache_enable_at_startup = 1 " Use neocomplcache.
let g:neocomplcache_enable_smart_case = 1 " Use smartcase.
let g:neocomplcache_enable_camel_case_completion = 1 " Use camel case completion.
let g:neocomplcache_enable_underbar_completion = 1 " Use underbar completion.
let g:neocomplcache_min_syntax_length = 3 " Set minimum syntax keyword length.
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

" OmniCppComplete
" ---------------
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set tags+=~/.vim/tags/tags
set tags+=~/.vim/tags/c++.tags
set tags+=~/.vim/tags/stl-3.3.tags
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files


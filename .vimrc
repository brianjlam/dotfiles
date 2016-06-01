" VIM Configuration
syntax on
set nocompatible             " required
set rtp+=~/.vim/bundle/Vundle.vim
filetype on                  " required
filetype plugin indent on    " required

call vundle#begin()
" Plugin commands here -----------------------------
Plugin 'VundleVim/Vundle.vim'
Plugin 'LaTex-Suite-aka-Vim-LaTex'
Plugin 'Valloric/YouCompleteMe'
" End plugin commands ------------------------------
call vundle#end()            " required

" Non-plugin stuff after this line----------------------
set tabstop=4
set autoindent
set number 			" line numbers
set shiftwidth=4 	" number of spaces to  autoindent
set incsearch
set hlsearch
set guifont=Monospace\ 11
let g:tex_flavor='latex'
set showmatch
set bs=indent,eol,start " backspace over everything in insert mode
colors koehler

let g:netrw_liststyle=3
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf, aux'

" Use a blinking upright bar cursor in Insert mode, a blinking block in normal
if &term == 'xterm-256color' || &term == 'screen-256color'
	let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"
endif
if exists('$TMUX')
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
endif

" wrapping fix -------------------------------------------
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
vnoremap <Down> gj
vnoremap <Up>   gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

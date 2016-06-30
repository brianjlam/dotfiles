" ----------------------------------------------------------------------------
" VIM Configuration - Brian Lam - brian.lam@berkeley.edu
" ----------------------------------------------------------------------------

" Vundle commands ------------------------------------------------------------
set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'LaTex-Suite-aka-Vim-LaTex'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
call vundle#end()

filetype plugin indent on    		" Required for Vundle
" ----------------------------------------------------------------------------


" Non-plugin Settings --------------------------------------------------------
colorscheme koehler 
syntax on

set autoread
set tabstop=4
set shiftwidth=4 		" Set number of spaces to autoindent
set autoindent

set number 				" Enable line numbering
set wildmenu
set showmatch			" Highlight matching parentheses
set foldenable
set foldlevelstart=10
set foldmethod=indent
set visualbell
set mouse=a
set bs=indent,eol,start " Backspace over everything in insert mode
set hidden

set incsearch			" Allow search-as-you-type
set hlsearch        	" Highlight all search matches
set ignorecase
set smartcase

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf, aux'
let g:netrw_liststyle=3
" ----------------------------------------------------------------------------


" Keymaps --------------------------------------------------------------------
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

nnoremap ; :
nnoremap <space> za
nnoremap gV `[v`]
" ----------------------------------------------------------------------------


" Switch cursor between Insert and Normal ------------------------------------
if &term == 'xterm-256color' || &term == 'screen-256color'
	let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"
endif
if exists('$TMUX')
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
endif
" ----------------------------------------------------------------------------

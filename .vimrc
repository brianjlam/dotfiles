" ----------------------------------------------------------------------------
" VIM Configuration - Brian Lam - brian.lam@berkeley.edu
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" Vundle commands
" ----------------------------------------------------------------------------
set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-latex/vim-latex'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()

filetype plugin indent on    		" Required for Vundle

" ----------------------------------------------------------------------------
" Non-plugin Settings
" ----------------------------------------------------------------------------
colorscheme koehler
syntax on

" autocmd vimenter * NERDTree

" For powerline ---
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup
python3 del powerline_setup
set noshowmode
set laststatus=2
set showtabline=2
set t_Co=256
" -----------------

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
set vb t_vb= 
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
" Keymaps
" ----------------------------------------------------------------------------
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

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" ----------------------------------------------------------------------------
" Switch cursor between Insert and Normal
" ----------------------------------------------------------------------------
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[1 q\<Esc>\\"
else
	let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"
endif

" ----------------------------------------------------------------------------

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
Plugin 'tpope/vim-obsession'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
call vundle#end()

filetype plugin indent on    		" Required for Vundle

" Powerline ------------------------------------------------------------------
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256
" -----------------------------------------------------------------------------


" ----------------------------------------------------------------------------
" Non-plugin Settings
" ----------------------------------------------------------------------------
colorscheme gruvbox

let g:rehash256 = 1

syntax on

" autocmd vimenter * NERDTree

set background=dark
set autoread
set tabstop=4
set shiftwidth=4 		" Set number of spaces to autoindent
set autoindent
set list lcs=tab:\|\ "here is a space"

set number 				" Enable line numbering
set wildmenu
set showmatch			" Highlight matching parentheses
set foldenable			" Enable folding
set foldlevelstart=10	" Fold only after 10th level indent by default
set foldmethod=indent	" Determine folds based on indentation
set vb t_vb= 			" Disable visualbell
set bs=indent,eol,start " Backspace over everything in insert mode
set hidden

set incsearch			" Allow search-as-you-type
set hlsearch        	" Highlight all search matches
set ignorecase
set smartcase

set colorcolumn=80
"hi Normal ctermbg=none
"hi NonText ctermbg=none
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
nnoremap Y y$

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

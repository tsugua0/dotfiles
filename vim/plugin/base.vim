" main 
filetype plugin on
set nocompatible
set number relativenumber
syntax on
set t_Co=256
colorscheme fahrenheit
set termencoding=utf8
set hidden

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" searching
set incsearch
set hlsearch
set ignorecase
set smartcase

" status bar
set wildmenu
set showcmd
set noshowmode
set ch=1
set laststatus=2
let g:lightline = {
			\ 'colorscheme': 'fahrenheit'
			\ }

" indentation
set foldenable
set foldlevel=100
set foldmethod=indent
set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4
set tabstop=4

" mouse
set mouse=a
set mousemodel=popup
set mousehide

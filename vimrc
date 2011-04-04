set nocompatible
set autoread

set autoindent
set smartindent

set wrap
set tabstop=4
set shiftwidth=4
set ruler

set showmatch 
set hlsearch
set incsearch
set ignorecase

set lz

set listchars=eol:↲,tab:→→,trail:·,nbsp:↔
set list

set wildmenu
set laststatus=2
set statusline=%<%f\ [%Y%R%W]%1*%{(&modified)?'\ [+]\ ':''}%*%=%c%V,%l\ %P\ [%n]

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp1251,cp866,koi8-r

call pathogen#runtime_append_all_bundles()

set background=dark
colorscheme solarized

set t_Co=256
syntax enable

:filetype plugin on

map Q :q

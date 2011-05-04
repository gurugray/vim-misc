set nocompatible
set autoread

set autoindent
set smartindent
set smarttab

set wrap
set tabstop=4
set shiftwidth=4
set expandtab
set ruler

set showmatch
set hlsearch
set incsearch
set ignorecase

set lz
set listchars=tab:\ \ ,trail:~
set list

set wildmenu
set laststatus=2
set statusline=%<%f\ [%Y%R%W]%1*%{(&modified)?'\ [+]\ ':''}%*%=%c%V,%l\ %P\ [%n]

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp1251,cp866,koi8-r

set nobackup
set noswapfile

set foldmethod=syntax
set cursorline

call pathogen#runtime_append_all_bundles()

set background=dark
colorscheme solarized

set t_Co=256
syntax enable

:filetype plugin on

map QQ :q <Cr>
map <silent> <C-t> <ESC> :tabedit .<Cr>
map <silent> ] <ESC> :tabnext <Cr>
map <silent> [ <ESC> :tabNext <Cr>

"иногда встречаются файлы с расширением html, но контентом tt2, меням их тип
"в ручную — в автоматическом режиме приносит больше вреда
map <silent> TT <ESC> :set filetype=tt2 <Cr>

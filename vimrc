set nocompatible

call pathogen#runtime_append_all_bundles()

filetype on
filetype plugin on
filetype indent on

set autoread

set autoindent
set smartindent
set smarttab

set wrap
set tabstop=4
set softtabstop=4
set linespace=1
set shiftwidth=4
set expandtab
set ruler
set cursorline

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

set foldcolumn=1
set foldmethod=syntax
set foldnestmax=10
set nofoldenable

set scrolljump=5
set scrolloff=3

set synmaxcol=1000

call pathogen#runtime_append_all_bundles()

set background=dark
colorscheme solarized

set t_Co=256
syntax enable

set wrap
set linebreak
set pastetoggle=<F3>

if has("linebreak")
    let &sbr = nr2char(8618).' '  " Show ↪ at the beginning of wrapped lines
endif

" Загрузка предыдущей сессии
set viminfo='10,\"100,:20,%,n~/.viminfo

" Устанавливаем курсор в файле на место, где он был при закрытии этого файла
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" По MM в Normal mode включает/выключает поддержку мыши
function! ToggleMouse()
    if &mouse == 'a'
        set mouse=
        echo "Mouse usage disabled"
    else
        set mouse=a
        echo "Mouse usage enabled"
    endif
endfunction

nnoremap MM :call ToggleMouse()<CR>

map QQ :q <Cr>
map <silent> <C-t> <ESC> :tabedit .<Cr>
map <silent> ] <ESC> :tabnext <Cr>
map <silent> [ <ESC> :tabNext <Cr>

"иногда встречаются файлы с расширением html, но контентом tt2, меням их тип
"в ручную — в автоматическом режиме приносит больше вреда
map <silent> TT <ESC> :set filetype=tt2 <Cr>

vmap > >gv
vmap < <gv

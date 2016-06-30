set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
scriptencoding utf-8

" 検索時に大文字小文字を区別
set noignorecase
" 
"set smartcase
" 検索文字列のハイライト
set hlsearch
" インクリメンタルサーチ
set incsearch
" 
set nowrapscan

set tabstop=4
set expandtab
set autoindent
"set smartindent
set shiftwidth=4
"set showmatch
"set matchtime=1

syntax on
set background=dark
set mouse=a
nnoremap j gj
nnoremap k gk
set number
set wrap
set showcmd
set wildmenu
set laststatus=2
set cmdheight=2
set nolist


set nobackup
set nowritebackup
set noswapfile
set noundofile
set hidden

inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap < <><Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap {<CR> {}<Left><CR><ESC><S-o><Tab>
inoremap (<CR> ()<Left><CR><ESC><S-o><Tab>

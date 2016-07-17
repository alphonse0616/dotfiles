"dein Scripts-----------------------------

if &compatible
    set nocompatible
endif
   
"Required:
set runtimepath^=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.vim/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/unite.vim')
call dein#add('scrooloose/nerdtree')

" Add or remove your plugins here:
call dein#add('Shougo/.vim')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"    call dein#install()
"endif

"End dein Scripts-------------------------

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
highlight LineNr ctermfg=darkyellow
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

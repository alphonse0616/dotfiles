if &compatible
  set nocompatible
endif
set runtimepath^=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/unite.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('tomasr/molokai')
call dein#add('scrooloose/syntastic')
call dein#add('itchyny/lightline.vim')
call dein#add('Shougo/neosnippet.vim')
"Plugin key-mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_or_target)

"SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"
"For snippet complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neocomplete.vim')
let g:neocomplete#enable_at_startup = 1

call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

call dein#end()

filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
scriptencoding utf-8

set ignorecase
set smartcase
set hlsearch
set incsearch

set tabstop=2
set expandtab
set autoindent
set smartindent
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start
set wrapscan
set showmatch
set wildmenu
set formatoptions+=mM

set number
set ruler
set nolist
set wrap
set laststatus=2
set cmdheight=1
set showcmd
set title

syntax on
colorscheme molokai

set nobackup
set nowritebackup
set noswapfile
set noundofile
set hidden

set mouse=a

let g:loaded_matchparen=1
nnoremap j gj
nnoremap k gk
inoremap {<CR> {}<Left><CR><ESC><S-o><Tab>

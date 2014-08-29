syntax enable
filetype plugin on


set incsearch
set showmatch
set matchtime=5
set ignorecase
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab         " 在输入 tab 后, vim 用恰当的空格来填充这个 tab
set nu

" 设置编码
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1
set mouse=a

set cursorline  " hightlignth cursor line
" 解决consle输出乱码
language messages zh_CN.utf-8

set directory=~/tmp/vim/swap    " Set Swap directory
set nobk "关闭自动备份
set cot=menuone ",preview  "全能补全的时候只显示菜单，preview预览窗口
set undodir=~/tmp/vim/undo
set undofile
set undolevels=1000
set undoreload=10000

" backup to ~/.tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

set nocompatible               " be iMproved
filetype off                   " required!


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'

Bundle 'digitaltoad/vim-jade'
Bundle 'tomasr/molokai'
Bundle 'pangloss/vim-javascript'
Bundle 'plasticboy/vim-markdown'
Bundle 'airblade/vim-gitgutter'

map <C-t> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

let g:airline_powerline_fonts=0
let g:airline_theme='luna'
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed.

set background=dark
let g:molokai_original = 1
colorscheme molokai

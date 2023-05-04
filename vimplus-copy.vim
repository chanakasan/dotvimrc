"  Author: chxuan <787280310@qq.com>
"  Repository: https://github.com/chxuan/vimplus
"  Create Date: 2016-04-10
"  License: MIT

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype on
filetype plugin on
set noeb
syntax enable
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set cmdheight=2
set showcmd
set ruler
set laststatus=2
set number
set cursorline
set whichwrap+=<,>,h,l
set ttimeoutlen=0
set virtualedit=block,onemore

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set cindent
set cinoptions=g0,:0,N-s,(0
set smartindent
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set nowrap
set backspace=2
set sidescroll=10
set nofoldenable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu
set completeopt-=preview

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch
set incsearch
set ignorecase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set noswapfile
set autoread
set autowrite
set confirm

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enconding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    set guifont="DejaVuSansMono Nerd Font Mono:h18"
    set guioptions-=m
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    set showtabline=0
    set guicursor=n-v-c:ver5
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
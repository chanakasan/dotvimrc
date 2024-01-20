"
"  Author: chanakasan <chanakasan@gmail.com>
"  Repository: https://github.com/chanakasan/chk-vim
"  Create Date: 2023-05-05
"  License: MIT

"--------------------------------
" Sett::Basic
"--------------------------------
set nocompatible
set noeb
filetype on
filetype plugin on
syntax enable
syntax on
set hidden
"--------------------------------
" Sett::Colorscheme
"--------------------------------
set background=dark
color CandyCode
"--------------------------------
" Sett::Terminal
"--------------------------------
set t_Co=256
if has('termguicolors')
  let &t_8f="\e[38;2;%ld;%ld;%ldm"
  let &t_8b="\e[48;2;%ld;%ld;%ldm"
  set termguicolors
end
"--------------------------------
" Sett::Appearance
"--------------------------------
set title
set cmdheight=8
set showcmd
set laststatus=2
set cursorline
set ruler
set whichwrap+=<,>,h,l
set ttimeoutlen=0
set belloff=all
set novisualbell
"--------------------------------
" Sett::Editor
"--------------------------------
filetype indent on
set virtualedit=block,onemore
set number
set autoindent
set cindent
set cinoptions=g0,:0,N-s,(0
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set nowrap
"set backspace=2
set backspace=indent,eol,start
set sidescroll=10
set nofoldenable
set showmatch
"--------------------------------
" Sett::Whitespace
"--------------------------------
set expandtab
set tabstop=2
set softtabstop=2
"--------------------------------
" Sett::Indentation
"--------------------------------
let g:html_indent_inctags = "html,body,head,tbody"
set autoindent
set smartindent
set copyindent
"_ number of spaces to use for autoindenting
set shiftwidth=2  
"_ when at 3 spaces and i hit >>, go to 4, not 5.
set shiftround  
"--------------------------------
" Sett::Menu
"--------------------------------
set wildmenu
set completeopt-=preview
"--------------------------------
" Sett::Search
"--------------------------------
set incsearch
set hlsearch
"_ searches case-sensitive only if they contain uppercase letters
set ignorecase smartcase 
"--------------------------------
" Sett::Backup
"--------------------------------
set noswapfile
set nobackup
" set autoread
" set autowrite
" set confirm
" set undofile
" set backup
" set writebackup
" set backupdir=~/.tmp-vim,~/.tmp,~/tmp,/var/tmp,/tmp " Don't clutter my dirs up with swp and tmp files
" set directory=~/.tmp-vim,~/.tmp,~/tmp,/var/tmp,/tmp
" set undodir=~/.tmp-vim,~/.tmp,~/tmp,/var/tmp,/tmp
"--------------------------------
" Sett::Enconding
"--------------------------------
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
"set encoding=utf-8
"scriptencoding utf-8
"setglobal fileencoding=utf-8
"--------------------------------
" Sett::GUI
"--------------------------------
if has('linux')
  set guifont=DejaVu\ Sans\ Mono\ 18
else
  set guifont=DejaVuSansMono_Nerd_Font_Mono:h12:cANSI:qDRAFT
endif
set guioptions-=m
set guioptions-=T
set guioptions-=r
"set guioptions-=L
"set guioptions-=b
"set showtabline=0
"set guicursor=n-v-c:ver5
"_ disable all blinking
set guicursor+=a:blinkon0
"--------------------------------
" Sett::Splits
"--------------------------------
set splitbelow
set splitright
set winminheight=0
set winwidth=79
"--------------------------------
" Sett::Scrolling
"--------------------------------
set scrolloff=3
set sidescrolloff=7
set sidescroll=1
"--------------------------------
" Sett::File Browser
"--------------------------------
let g:netrw_altfile=1
"--------------------------------
" Sett::Maximize
"--------------------------------
if has('win32')
  au GUIEnter * simalt ~x
endif
if has('linux')
  au GUIEnter * call system('wmctrl -i -b add,maximized_vert,maximized_horz -r '.v:windowid)
endif
"--------------------------------
" Sett::Dictionary
"--------------------------------
set dictionary+=/home/cs/.vim/dict/words
set complete+=k
"--------------------------------
" Sett::Autocommands
"--------------------------------
augroup au_ft_ahk
  autocmd!
  autocmd FileType sh nnoremap <buffer> <leader>r :w \| !%<cr>
augroup END

"--------------------------------
" Map::Any
"--------------------------------
let mapleader = "<leader>"
set pastetoggle=<M-p>
nnoremap <leader>s :source $MYGVIMRC<cr>
nnoremap <leader>e :e $MYGVIMRC<cr>
nnoremap <leader>n :Note<cr>
command! Ed :e $MYGVIMRC
command! Sett :e $HOME/.vim/plugin/settings/
command! Mapp :e $HOME/.vim/plugin/mappings/
nnoremap <leader>H :execute ":help " . expand("<cword>")<cr>
noremap <c-s> :w<cr>
nnoremap <cr> :nohl<cr>
nmap <F3> i<C-R>=strftime("%Y-%m-%d %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %I:%M %p")<CR>
"_ counts the num of occurences of word under cursor
"nnoremap * *<C-O>:%s///gn<CR> 
nnoremap * *<C-O>:%s///gn<cr>
"--------------------------------
" Map::Splits
"--------------------------------
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap _ :sp<cr>
nnoremap <bar> :vsp<cr>
"--------------------------------
" Map::Scrolling
"--------------------------------
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
"--------------------------------
" Map::File Browser
"--------------------------------
nnoremap <space><space> <c-^>
nnoremap <space>e :edit <C-R>=escape(expand('%:h:p'), ' ').'/'<cr>
nnoremap <space>v :view <C-R>=escape(expand('%:h:p'), ' ').'/'<cr>
cnoremap <c-j>d <C-R>=escape(expand('%:h'), ' ').'/'<cr>
cnoremap <c-j>f <C-R>=escape(expand('%:t:r'), ' ')<cr>
"--------------------------------
" Map::Commands
"--------------------------------
command! Copy :!cat % | clip.exe
command! COpy :Copy
command! SourceFile :source %
command! Mru :bro ol
command! MRu Mru
command! New :enew
command! Bw :bprev | bw#
command! BW :Bw
command! CloseAll :bufdo bd
command! CLoseAll :CloseAll
command! InsertLineNumbers :%!nl -s '. ' -w 2
command! Note :e $1Hq/Local/gvim notes/blank.md
"--------------------------------
" Map::Fail-safe
"--------------------------------
command! E :e .
command! Q :q
command! Qall :qall
command! QA :qall
command! W :w
command! WQ :wq
command! Wq :wq
"--------------------------------
" Map::Tabs
"--------------------------------
nnoremap <c-t> :tabnew<cr>
nnoremap <a-right> :tabnext<cr>
nnoremap <a-left> :tabprevious<cr>

"--------------------------------
" Plug::Manager
"--------------------------------
"Install:
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" Make sure you use single quotes for Plug entries
" Reload .vimrc and :PlugInstall to install plugins
call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'dyng/ctrlsf.vim'
"Plug 'SirVer/ultisnips'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'MaxMEllon/vim-jsx-pretty', { 'for': 'javascript' }
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function'
Plug 'sgur/vim-textobj-parameter'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()

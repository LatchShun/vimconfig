syntax enable
syntax on

let mapleader = ";"

" set encoding=utf-8

" color scheme ��
set  background=dark
colorscheme evening

" cursor shine
set gcr=a:block-blinkon0

" not show scroll
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" not show menu and toolbar
set guioptions-=m
set guioptions-=T

" 显示状态栏
set laststatus=2
" 显示光标位置
set ruler

" show number
set number
set relativenumber

" highlight current line and column
set cursorline
set cursorcolumn

" highlight search terms
set hlsearch

" no wrap
set nowrap 

set tabstop=2 " a tab is 2 spaces
set autoindent 
set copyindent "copy previous indentation on autoindenting
set shiftwidth=2 " number of spaces to use for autoindenting
set showmatch " set show matching parenthesis
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is all lowercase, case-sensitive
set smarttab " insert tabs on the start of a line according to shiftwidth, not
set nobackup
set noswapfile

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'  " 插件管理

"--------------- plugins--------------------------------------------
" plugins from git repo
Plugin 'Valloric/YouCompleteMe'
Plugin 'mhinz/vim-signify'
Plugin 'plasticboy/vim-markdown'
Plugin 'Shougo/unite.vim'      " 快速查找
Plugin 'Shougo/vimfiler.vim'   " 文件浏览
Plugin 'majutsushi/tagbar'     " 列出申明的类、变量及方法
Plugin 'sbdchd/neoformat'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'neomake/neomake'
Plugin 'cespare/vjde'
Plugin 'jiangmiao/auto-pairs'

" color schemes
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'

" plugins from vim-scripts repo
Plugin 'instant-markdown'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ---------------------Plugin-specific Settings----------------
" VimFiler
let g:vimfiler_as_default_explorer = 1

" fullscreen
fun! ToggleFullscreen()
       call system("wmctrl -ir " . v:windowid . " -b toggle, fullscreen")
endf
" fullscreen shortcut
map <silent> <F11> :call ToggleFullscreen()<CR>
" auto fullscreen when start
" autocmd VimEnter * call ToggleFullscreen()


" map
" quickly edit/reload the vimrc filv
nmap <silent> <leader>ev :e $HOME/_vimrc<CR>
nmap <silent> <leader>sv :so $HOME/_vimrc<CR>

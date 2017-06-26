set nocompatible		" be iMproved, required
filetype off			" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'	" fuzzy finder
"Plugin 'sjl/badwolf'		" color scheme
Plugin 'tomtom/tcomment_vim'	" press gc to comment and uncomment lines
Plugin 'whatyouhide/vim-gotham' " color scheme
Plugin 'bling/vim-airline' "
Plugin 'scrooloose/NERDTree' " NERDTree file tree
Plugin 'scrooloose/syntastic' " syntax checker
"Plugin 'chriskempson/base16-vim'

" All of your plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required

" Brief help
" :PluginList		- lists configured plugins
" :PluginInstall	- installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo	- searcher for foo; append `!` to refresh local cache 
" :PluginClean		- confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" put your non-Plugin stuff after this line



set number			" line numbers
set showcmd			" show command in bottom bar
set cursorline			" highlight current line
set showmatch			" highlight matching [{()}]
set incsearch			" search as characters are entered
set hlsearch			" highlight search matches
set tabstop=2			" number of spaces per tab
set nowrap			" don't wrap display of lines if too long
set textwidth=120		" when insertin, wrap after 120 chars
set numberwidth=5		" fix linenum width
set ignorecase			" case insensitive search
set autoindent			" auto indent

syntax on
"colorscheme desert
"colorscheme bluish
colorscheme gotham256

autocmd vimenter * NERDTree " auto toggle NERDTree
autocmd vimenter * wincmd p " toggle focus to file instead of NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " exit vim if NERDTree is the last open window
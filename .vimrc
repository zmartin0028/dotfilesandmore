set nocompatible		" be iMproved, required
filetype off			" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'   " fuzzy finder
Plugin 'tomtom/tcomment_vim'  " press gc to comment and uncomment lines
Plugin 'bling/vim-airline'    "
Plugin 'scrooloose/NERDTree'  " NERDTree file tree
Plugin 'scrooloose/syntastic' " syntax checker
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'kshenoy/vim-signature'
Plugin 'godlygeek/tabular'
Plugin 'NLKNguyen/papercolor-theme'

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

let mapleader = ","

nnoremap <leader>rn :set invrnu<cr>

imap jj <esc>
imap ff $
nnoremap ; :
vnoremap ; :
nnoremap <leader>k :NERDTreeToggle<Cr> 

set number           " line numbers
set showcmd          " show command in bottom bar
set cursorline       " highlight current line
set showmatch        " highlight matching [{()}]
set incsearch        " search as characters are entered
set hlsearch         " highlight search matches
set tabstop=2        " number of spaces per tab
set nowrap           " don't wrap display of lines if too long
set textwidth=120    " when insertin, wrap after 120 chars
set numberwidth=5    " fix linenum width
set ignorecase       " case insensitive search
set autoindent       " auto indent
set sidescrolloff=15 " start scrolling when 15 chars away from edge
set scrolloff=8      " start scrolling when 8 lines away from margins
set virtualedit=all  " allow cursor to go where no cursor has gone before
set expandtab        " tabs are spaces
set softtabstop=2    " number of spaces per tab
set tabstop=2        " number of spaces per tab
set nobackup
set noswapfile

syntax on

" unicode chars for displaying white space (show with <leader>l)                                                  
set listchars=tab:»·,trail:·,nbsp:·,eol:↩ 

" invert listchars (whitespace display)                                                                           
nnoremap <leader>l :set invlist<cr>

" sane window navigation
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

function! s:TabAliases()
  " align commas
  nnoremap <leader>a, :Tabularize /,<cr>
  vnoremap <leader>a, :GTabularize /[^\/\/],<cr>gv

  " align ;
  nnoremap <leader>a; :Tabularize /;<cr>
  vnoremap <leader>a; :Tabularize /;<cr>gv
  "vnoremap <leader>a; :GTabularize /[^^\s*\/\/];<cr>gv " doesn't work for some reason

  " align :
  nnoremap <leader>a: :Tabularize /:<cr>
  vnoremap <leader>a: :Tabularize /:<cr>

  " align double slash
  nnoremap <leader>a/ :Tabularize /\/\/<cr>
  vnoremap <leader>a/ :Tabularize /\/\/<cr>gv

  " align |
  nnoremap <leader>a\| :Tabularize /\|<cr>
  vnoremap <leader>a\| :GTabularize /[^^\s*\/\/]\|<cr>gv

  " align &
  nnoremap <leader>a& :Tabularize /&<cr>
  vnoremap <leader>a& :GTabularize /[^^\s*\/\/]&<cr>gv
  
  " align "
  nnoremap <leader>a" :Tabularize /"<cr>
  vnoremap <leader>a" :GTabularize /[^^\s*\/\/]"<cr>gv

  " align =
  nnoremap <leader>a= :Tabularize /=<cr>
  vnoremap <leader>a= :GTabularize /[^^\s*\/\/]=<cr>gv
  
  " align .
  nnoremap <leader>a. :Tabularize /\.<cr>
  vnoremap <leader>a. :GTabularize /[^^\s*\/\/]\.<cr>gv

  " align < (tailored for verilog register assignments)
  nnoremap <leader>a< :Tabularize /</l4c0<cr>
  vnoremap <leader>a< :GTabularize /[^^\s*\/\/]</l4c0<cr>gv

  " align > 
  nnoremap <leader>a> :Tabularize />/l0<cr>
  vnoremap <leader>a> :GTabularize /[^^\s*\/\/]>/l0<cr>gv

  " align (
  nnoremap <leader>a( :Tabularize /(<cr>
  vnoremap <leader>a( :GTabularize /[^^\s*\/\/](<cr>gv

  " align )
  nnoremap <leader>a) :Tabularize /)/l1c0<cr>
  vnoremap <leader>a) :GTabularize /)/l1c0<cr>gv
  "vnoremap <leader>a) :GTabularize /[^^\s*\/\/])/l1c0<cr>gv " doesn't work for some reason

  nnoremap <leader>a* :Tabularize /*/l1c0<cr>
  vnoremap <leader>a* :GTabularize /*/l1c0<cr>
endfunction

autocmd VimEnter * if exists(":Tabularize") | call s:TabAliases() | endif

" different shades for arcadia colorscheme
" Darker Grey
" let g:arcadia_Sunset = 1
" colorscheme arcadia

" Darkest Grey
" let g:arcadia_Twilight = 1
" colorscheme arcadia

" Almost Black
" let g:arcadia_Midnight = 1
" colorscheme arcadia

" Black
" let g:arcadia_Pitch = 1
" colorscheme arcadia

" Ivory Background
" let g:arcadia_Daybreak = 1
" colorscheme arcadia

" set background=light
" colorscheme PaperColor
" colorscheme vcbc
colorscheme antares
" colorscheme Monokai
" colorscheme madeofcode
" colorscheme oceandeep
" colorscheme alduin
" colorscheme Tomorrow-Night-Eighties

" dim line numbers
highlight LineNr guifg=darkgrey ctermfg=darkgrey

autocmd vimenter * NERDTree " auto toggle NERDTree
autocmd vimenter * wincmd p " toggle focus to file instead of NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " exit vim if NERDTree is the last open window



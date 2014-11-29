" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'Valloric/YouCompleteMe'

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

set nocompatible " no vi compatibility
set mouse=a " mouse editing

set encoding=utf8

" files
set nobackup
set nowb
set noswapfile " no backup since we have git
set autoread " read a file when it's changed from outside

set wildmenu " turn on the wildmenu

set tabstop=4 " number of spaces that count as tab
set shiftwidth=4 " number of spaces to use for autoindent
set smarttab
set autoindent " copy indent from previous line

set showmatch " show matching brackets

" search
set hlsearch " highlight matches
set incsearch " feedback while typing
set ignorecase
set smartcase " override ignorecase when we have upper case chars
set wrapscan " continue search at top
" nnoremap <esc> :noh<return><esc> " disable search highlighting when pressing escape

set showcmd " always show command

" syntax hightlighting
" filetype plugin on
" filetype indent on
syntax on
colorscheme desert
colors desert

set number " line numbers

set noerrorbells
set novisualbell

" line wrapping
set wrap
set linebreak
set nolist " disables linebreak
set textwidth=0
set wrapmargin=0
set whichwrap=b,s,<,>,[,] " allow arrow keys to wrap lines

" build system
set makeprg=make\ -C\ ../build\ -j8
nnoremap <C-b> :make!<cr>

let &path.="/usr/include," " search path gf command

" gvim settings
:set guioptions-=T " remove toolbar
:set guioptions-=r " remove scroll bar
set guifont=Monaco\ 11

" youcompleteme
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
" let g:ycm_server_use_vim_stdout = 1
" let g:ycm_server_log_level = 'debug'
nnoremap <C-j> :YcmCompleter GoTo<CR>

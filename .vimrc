" must be the first setting
set nocompatible        " don't emulate Vi's bugs

" install vim-plug
" Source: https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug plugins
call plug#begin('~/.vim/plugged')
Plug 'ambv/black'
Plug 'w0rp/ale'
call plug#end()

" configuration of ALE plugin
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black'],
\   'markdown': ['prettier'],
\}

" Source:  https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
" Source:  https://dougblack.io/words/a-good-vimrc.html

" App
set laststatus=2    
syntax enable						" enable syntax processing
set showcmd             " show incomplete cmds down the bottom
set showmode            " show current mode down the bottom
filetype plugin on      " enable filetype plugin
filetype indent on      " enable indent plugin
set mouse=a             " https://superuser.com/a/826240
set background=dark     " set black background
set backspace=indent,eol,start " https://stackoverflow.com/a/3534090
set showtabline=2       " always show the tab line at the top
set laststatus=2        " status line always on

" Tabs
set shiftwidth=2        " set a <TAB> key-press equal to X spaces
set tabstop=2						" number of visual spaces per TAB
set softtabstop=2		    " number of spaces in tab when editing
set expandtab						" tabs are spaces, turns tabs into spaces
set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')
set wrap								" wrap lines
set lbr									" enable line break

" Menus
set wildmenu						" visual autocomplete for command menu
set lazyredraw					" redraw only when we need to
set ttyfast             " speed optimisations

" Searching
set showmatch						" highlight matching [{()}]
set ignorecase					" ignore case when searching
set smartcase						" when searching try to be smart about cases
set hlsearch						" highlight search results
set incsearch						" makes search act like search in modern browsers
set magic								" for regular expressions turn magic on

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

" File IO
set history=500					" sets how many lines of history VIM has to remember
set autoread						" auto read when a file is changed from the outside
set encoding=utf8				" utf8 as standard encoding and en_US default lang
set ffs=unix,dos,mac		" use Unix as the standard file type
set nobackup            " turn file backups off
set nowb                " turn file backups off
set noswapfile          " turn file backups off

" powerline-status
"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup
"set rtp+={~/.local/lib/python3.6/site-packages/powerline/bindings/vim
"set noshowmode          " must go at the end of the .vimrc file
                        " https://superuser.com/a/450408



" must be the first setting
" don't emulate Vi's bugs
set nocompatible

" install vim-plug
" Source: https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" add vim-plug plugins
call plug#begin('~/.vim/plugged')
Plug 'ambv/black'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
call plug#end()

" configuration of vim-plug ALE plugin
let g:airline#extensions#ale#enabled = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black','trim_whitespace','remove_trailing_lines'],
\   'markdown': ['prettier'],
\   'css': ['prettier'],
\   'html': ['prettier'],
\}
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed="always"
let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options = '-m flake8'
let g:ale_python_mypy_executable = 'python3'
let g:ale_python_mypy_options = '-m mypy'
let g:ale_python_pylint_executable = 'python3'
let g:ale_python_pylint_options = '-m pylint
            \--extension-pkg-whitelist=torch,cv2,numpy
            \--generated-members=numpy.*,torch.*'

" https://www.youtube.com/watch?v=XA2WjJbmmoM
"
" fuzzy file finder
set path+=**            "  allow recursive searches within the current project


" Source:  https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
" Source:  https://dougblack.io/words/a-good-vimrc.html

" App
syntax enable		   	" enable syntax processing
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
set shiftwidth=4        " set a <TAB> key-press equal to X spaces
set tabstop=4			" number of visual spaces per TAB
set softtabstop=4	    " number of spaces in tab when editing
set textwidth=79        " PEP8 max line length
set expandtab			" tabs are spaces, turns tabs into spaces
set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')
set wrap				" wrap lines
set lbr				    " enable line break

" Menus
set wildmenu			" visual autocomplete for command menu
set lazyredraw			" redraw only when we need to
set ttyfast             " speed optimisations

" Searching
set showmatch			" highlight matching [{()}]
set ignorecase			" ignore case when searching
set smartcase			" when searching try to be smart about cases
set hlsearch			" highlight search results
set incsearch			" makes search act like search in modern browsers
set magic				" for regular expressions turn magic on

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

" File IO
set history=500			" sets how many lines of history VIM has to remember
set autoread			" auto read when a file is changed from the outside
set encoding=utf8		" utf8 as standard encoding and en_US default lang
set ffs=unix,dos,mac	" use Unix as the standard file type
set nobackup            " turn file backups off
set nowb                " turn file backups off
set noswapfile          " turn file backups off

" Source:  https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
" Source:  https://dougblack.io/words/a-good-vimrc.html

" App
set laststatus=2    
syntax enable						" enable syntax processing
set showcmd             " show incomplete cmds down the bottom
set showmode            " show current mode down the bottom
filetype plugin on      " enable filetype plugin
filetype indent on      " enable indent plugin
" Tabs
set shiftwidth=4        " set a <TAB> key-press equal to X spaces
set tabstop=2						" number of visual spaces per TAB
set softtabstop=4		    " number of spaces in tab when editing
set expandtab						" tabs are spaces, turns tabs into spaces
set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')
set wrap								" wrap lines
set lbr									" enable line break
set tw=80 							" break lines at x characters
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

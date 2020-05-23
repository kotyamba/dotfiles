" Main
syntax enable                           " Enables syntax highlighinga
filetype plugin indent on
set nomodeline                          " If 'modeline' is on 'modelines' gives the number of lines that is	checked for set commands.
set hidden                              " Required to keep multiple buffers open multiple buffers
set wildmenu                            " Enchanced command line completion.
set clipboard=unnamed                   " Copy paste between vim and everything else
set showcmd                             " display uncompleted commands in the status line
" set shell=bash\ -i

" Secure
set noswapfile                          " This is option set to disable to swap file within vim
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set cryptmethod=blowfish2               " Set Crypt method

"Mouse
set mouse=a                             " Enable your mouse
set mousehide                           " When on, the mouse pointer is hidden when characters are typed

"Encoding
scriptencoding utf-8
set encoding=utf-8 nobomb               " BOM often causes trouble
set fileencoding=utf-8                  " The encoding written to file

"Indent
"set autoindent                         " Good auto indent
set smartindent                         " Makes indenting smart
set copyindent                          " Copy the structure of the existing lines indent when autoindenting a new line
set nowrap                              " Display long lines as just one line
" set wrap linebreak nolist             " Wrap by words

" Cyrilic
set t_Co=256                            " Support 256 colors
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Search
set ignorecase                          " Case-insensitive searching. 
set smartcase                           " But case-sensetive if expression contains a capital letter
set hlsearch                            " Highlight searches
set incsearch                           " Looks ahead as you type the search patterns, and highlights first match

set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right

"Tabs
set smarttab                            " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set expandtab                           " Expand tabs to spaces
set softtabstop=4                       " Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>.


set number relativenumber               " Show line numbers.
" set wrap linebreak nolist
set showtabline=2		            	" Always show tabs 
set cursorline                          " Enable highlighting of the current line
set ruler                               " Show cursor position all time
" set laststatus=0                        " Always display the status line
set noshowmode                          " Hide status line
set visualbell                          " Use visual bell instead of audible bell (annnnnoying
if has('gui_macvim')                    " Set font for macvim
    set macligatures
endif

" Font
" This is a list of fonts which will be used for the GUI version of Vim
" Regular programers fonts
" set guifont=Fira\ Code:h18              " https://github.com/tonsky/FiraCode
" set guifont=JetBrains\ Mono:h17         " https://www.jetbrains.com/lp/mono/#how-to-install
" NERD FONTS: https://github.com/ryanoasis/nerd-fonts#font-installation
set guifont=JetBrainsMono\ Nerd\ Font:h17        " Cool font with icons

set linespace=1                         " Number of pixel lines inserted between characters
set cmdheight=2                         " More space for displaying messages
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
"set textwidth=80                        " Maximum width of text that is being inserted. 
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%>80v', 100)
set colorcolumn=80                      " 'colorcolumn' is a comma separated list of screen columns that are highlighted with ColorColumn |hl-ColorColumn|.
set updatetime=300                      " Faster completion
"set timeoutlen=100                     " The time in milliseconds that is waited for a key code or mapped key sequence to completey. By default timeoutlen is 1000 ms.

" Edit
set conceallevel=0                      " So that I can see `` in markdown files

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
"nnoremap <space> za

" set path=$PWD/**                        " This is a list of directories which will be searched when using the vim

"au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
:setlocal spell spelllang=ru_yo,en_us
set spell

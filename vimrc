set nocompatible " use vim settings rather then vi settings

filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" ------------------------------------------------------------------------------------
" Text
" ------------------------------------------------------------------------------------

set tabstop=2           " a tab is two spaces
set softtabstop=2       " remove two spaces as a tab when using <backspace>
set tabstop=4           " 
set expandtab           " expand tabs by default (overwritable per filetype later)
set autoindent          " 
set smartindent         " 
set nolist              " don't show hidden characters by default
set listchars=tab:▸\ ,eol:¬

" ------------------------------------------------------------------------------------
" Searching
" ------------------------------------------------------------------------------------

set hlsearch            " highlight search terms
set ignorecase          " ignore case when searching
set smartcase           " ignore case if search pattern is lowercase, sensitive otherwise
set incsearch           " show matches as you type

" ------------------------------------------------------------------------------------
" UI
" ------------------------------------------------------------------------------------

set number              " 
set ruler               " 
set wildmenu            " 
set wildignore=*.swp,*.bak
set lazyredraw          " don't update while in macro
set ttyfast             " improves redrawing
set ch=2                " command line height

if &t_Co > 2 || has("gui_running")
  syntax on
  set guifont=Monaco:h14
  colorscheme ir_black
endif

" ------------------------------------------------------------------------------------
" Remappings
" ------------------------------------------------------------------------------------

let mapleader=","
nmap <leader>l :set list!<CR>
nmap <leader>v :tabedit $MYVIMRC<CR>

" ------------------------------------------------------------------------------------
" Mouse Support (yeah really)
" ------------------------------------------------------------------------------------

set mousemodel=extend 
set mouse=a
set selectmode=mouse
set mousefocus

" ------------------------------------------------------------------------------------
" Other Stuff
" ------------------------------------------------------------------------------------

if has("autocmd")
  filetype plugin indent on

  autocmd bufwritepost .vimrc source $MYVIMRC
endif

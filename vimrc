set nocompatible " use vim settings rather then vi settings

filetype off
call pathogen#infect()
filetype plugin indent on

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

set gdefault            " search 'global' on lines 
set ignorecase          " ignore case when searching
set smartcase           " ignore case if search pattern is lowercase, sensitive otherwise
set incsearch           " show matches as you type
set showmatch           " 
set hlsearch            " 

                        " fix the broken regex handling
nnoremap / /\v
vnoremap / /\v
                        " clear search text in buffer
nnoremap <leader><space> :noh<cr>

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

" set <tab> to match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" using vim right
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" ------------------------------------------------------------------------------------
" Mouse Support (yeah really)
" ------------------------------------------------------------------------------------

set mousemodel=extend 
set mouse=a
set selectmode=mouse
set mousefocus

" ------------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------------

nnoremap <leader>a :Ack

map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" ------------------------------------------------------------------------------------
" Other Stuff
" ------------------------------------------------------------------------------------

if has("autocmd")
  filetype plugin indent on

  autocmd bufwritepost .vimrc source $MYVIMRC
endif

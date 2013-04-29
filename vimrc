set nocompatible       " use vim settings rather then vi settings

filetype off
call pathogen#infect()
filetype plugin indent on

" ------------------------------------------------------------------------------------
" Text
" ------------------------------------------------------------------------------------

set tabstop=2           " a tab is two spaces
set softtabstop=2       " remove two spaces as a tab when using <backspace>
set tabstop=2           " 
set expandtab           " expand tabs by default (overwritable per filetype later)
set autoindent          " 
set smartindent         " 
set nolist              " don't show hidden characters by default
set showmatch           " show matching parentheses
set listchars=tab:▸\ ,eol:¬

" ------------------------------------------------------------------------------------
" Searching
" ------------------------------------------------------------------------------------

set gdefault            " search 'global' on lines 
set ignorecase          " ignore case when searching
set smartcase           " ignore case if search pattern is lowercase, sensitive otherwise
set incsearch           " show matches as you type
set hlsearch            " highlight matches
                        " clear search text in buffer
nnoremap <leader><space> :noh<cr>

" ------------------------------------------------------------------------------------
" UI
" ------------------------------------------------------------------------------------

set number              " show line numbers
set ruler               " show ruler
set wildmenu            " use the wild menu
set wildignore=*.swp,*.bak
set lazyredraw          " don't update while in macro
set ttyfast             " improves redrawing
set ch=2                " command line height
"set errorbells          " 
"set visualbell          " no beeping, just visualbells
set scrolloff=2         " number of lines from vertical scrolling
set sidescrolloff=15    " number of columns from horizontal scrolling
set sidescroll=1        " number of columns to scroll at a time

if &t_Co > 2 || has("gui_running")
  syntax on
  set guifont=Monaco:h14
  colorscheme railscasts
endif

set statusline=%{fugitive#statusline()}

" ------------------------------------------------------------------------------------
" Re/unmappings
" ------------------------------------------------------------------------------------

let mapleader=","

" show line endings and tabs
nmap <leader>l :set list!<CR>

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Visually select the text that was last edited/pasted
nmap gV `[v`]

" Easier windownavigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-w> <C-w>w

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

map <leader>n :NERDTreeToggle<CR>

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
  autocmd bufwritepost  vimrc source $MYVIMRC
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunction
nmap <C-S-P> :call <SID>SynStack()<CR>

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

set nobackup                     " don't write backupfiles
set nowritebackup                " same
set directory=$HOME/.vim/tmp//,. " keep swapfiles at one location

call plug#begin('~/.vim/plugged')

"Browsing
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'

"Edit
Plug 'scrooloose/nerdcommenter'

"Buffers
Plug 'https://github.com/jlanzarotta/bufexplorer'

"Colors
Plug 'altercation/vim-colors-solarized'

"Git
Plug 'tpope/vim-fugitive'

"Status Bar
Plug 'vim-airline/vim-airline'

"Lang
Plug 'lervag/vimtex'
Plug 'fatih/vim-go'

"Lint
Plug 'scrooloose/syntastic'

call plug#end()

syntax on
let mapleader = "\<Space>"

inoremap jj <ESC>
inoremap {<CR> {<CR>}<C-o>O
inoremap (<CR> (<CR>)<C-o>O
nnoremap :vs :vsplit
nnoremap j gj
nnoremap k gk
xnoremap p pgvy
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

set hidden
set tabstop=4
set backspace=indent,eol,start
set autoindent
set copyindent
set shiftwidth=4
set softtabstop=4
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set title
set expandtab
set visualbell
set noerrorbells
set nobackup
set noswapfile
set laststatus=2
set splitright
set splitbelow
filetype plugin on

set wildmode=longest,list,full
set wildmenu

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

let g:solarized_termcolors=256
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers=['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active',  'passive_filetypes': ['tex', 'go'] }

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*,*.pyc
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

let g:tex_flavor='latex'

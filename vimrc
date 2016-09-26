call plug#begin('~/.vim/plugged')

"Defaults
Plug 'tpope/vim-sensible'

"Browsing
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"Edit
Plug 'scrooloose/nerdcommenter'

"Colors
Plug 'altercation/vim-colors-solarized'

"Git
Plug 'tpope/vim-fugitive'

"Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Lang
Plug 'lervag/vimtex'
Plug 'fatih/vim-go'
Plug 'davidhalter/jedi-vim'
Plug 'klen/python-mode'

"Lint
Plug 'scrooloose/syntastic'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-sleuth'


"Tag
Plug 'majutsushi/tagbar'

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

nnoremap <Leader>f :Files<CR>
nnoremap <Leader>g :GitFiles<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>l :BLines<CR>
nnoremap <Leader>d :Lines<CR>
nnoremap <Leader>r :BTags<CR>
nnoremap <Leader>t :Tags<CR>

nnoremap <Leader>z :TagbarToggle<CR>

nnoremap <Leader>w :bprevious<CR>
nnoremap <Leader>e :bnext<CR>
nnoremap <Leader>q :bp <BAR> bd #<CR>

nnoremap <Leader>p :!plc %<CR>

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

let g:solarized_termcolors=256
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

setlocal nonumber

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers=['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active',  'passive_filetypes': ['tex', 'go', 'cpp', 'py'] }

let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'simple'
let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:tex_flavor='latex'

let g:go_fmt_autosave = 0

let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>x'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

let g:jedi#goto_assignments_command = "<leader>G"

" extra stuff for when the indentation plugin gets confused
:command -nargs=1 Soft set tabstop=<args> softtabstop=<args> shiftwidth=<args> expandtab
:command -nargs=1 Hard set tabstop=<args> softtabstop=<args> shiftwidth=<args> noexpandtab

"Name 	:	Archit Singh             
"Email	:	architsingh456@gmail.com 
"GitHub :	archit-1997              

"Vim Configuration File


"Basic configurations
set nu
set path+=**
set relativenumber
syntax on 
let g:NERDTreeWinPos = "right"
set foldmethod=indent
set clipboard=unnamed
set noswapfile
set incsearch
set softtabstop=4
set linebreak
set showbreak=+++
set autoindent
set smartindent
set cindent
set copyindent
set numberwidth=5
set linespace=3
set splitright
set termguicolors


" Enable folding
set foldmethod=indent
set foldlevel=99
"Enable folding with the spacebar
nnoremap <space> za


"Compiling .cpp program
autocmd filetype cpp nnoremap <f5> :w <bar> !g++ -std=c++11 -O2 -Wall % -o %:r && ./%:r <cr>


"For formatting the file
au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.rkt,*.h
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix | 


set encoding=utf-8


" Always show tabs
set showtabline=10


"leader for nvim"
let mapleader = " "


"leader keybindings
nmap <leader>so	:source $MYVIMRC<CR>
nmap <leader>s 	:w<CR>
nmap <leader>q  :q<CR>
nmap <leader>f	:q!<CR>
nmap <leader>t 	:NERDTreeToggle<CR>
nmap <leader>d  :1,$d<CR>
nmap <leader>g  :Goyo<CR>

"split screen key bindings
nmap <leader>v  :vsp<CR>
nmap <leader>h  :sp<CR>

"tab switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"For opening files in the new tab and then type the file name
nmap <leader>o	:tabedit
"For going to the next tab
nmap <leader>j	:tabn<CR>
"For opening a new tab to the right
nmap <leader>n	:tabnew<CR>


"Ale lint settings
let g:ale_lint_on_enter = 1
let g:ale_linters = {'cpp': ['clang']}
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay=100


"CtrlP fuzzy search plugin
let g:ctrlp_map='<c-p>'
let g:ctrlp_show_hidden=1
set wildignore+=.git
let g:ctrlp_working_path_mode = 'ra'


"vim plug plugin
call plug#begin('~/.vim/plugged')
Plug 'Shougo/vimproc.vim'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'dense-analysis/ale'
Plug 'ervandew/supertab'
Plug 'tibabit/vim-templates'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
call plug#end()


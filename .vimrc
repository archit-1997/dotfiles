
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                              "
"    __      ___              _____             __ _           "
"    \ \    / (_)            / ____|           / _(_)          "
"     \ \  / / _ _ __ ___   | |     ___  _ __ | |_ _  __ _     "
"      \ \/ / | | '_ ` _ \  | |    / _ \| '_ \|  _| |/ _` |    "
"       \  /  | | | | | | | | |___| (_) | | | | | | | (_| |    "
"        \/   |_|_| |_| |_|  \_____\___/|_| |_|_| |_|\__, |    "
"                                                     __/ |    " 
"                                                    |___/     "
"                                                              "
"                                                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Name 	:	Archit Singh                                      
" Email	:	architsingh456@gmail.com                          
" GitHub :	archit-1997                                     
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      
"Plugin
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
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-scripts/ReplaceWithRegister'
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""    
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
colorscheme solarized
set bg=light
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      
" Enable folding
 set foldmethod=indent
 set foldlevel=99
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      
"Enable folding with the spacebar
" nnoremap <space> za
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      
"Compiling .cpp program
autocmd filetype cpp nnoremap <f5> :w <bar> !g++ -std=c++11 -O2 -Wall % -o %:r && ./%:r <cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      
" Always show tabs
set showtabline=10
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      
"leader for nvim"
let mapleader = " "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      
"leader keybindings
nmap <leader>so	:source $MYVIMRC<CR>
nmap <leader>s 	:w<CR>
nmap <leader>q  :q<CR>
nmap <leader>f	:q!<CR>
nmap <leader>t 	:NERDTreeToggle<CR>
nmap <leader>d  :1,$d<CR>
nmap <leader>g  :Goyo<CR>
nmap <leader>z  :vertical resize 60<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      
"split screen key bindings
nmap <leader>v  :vsp<CR>
nmap <leader>h  :sp<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      
"Mapping arrow key to move in between splits
noremap <up> <C-w><up>
noremap <down> <C-w><down>
noremap <left> <C-w><left>
noremap <right> <C-w><right> 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      
"disabling arrow keys
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      
"Tab Settings
"For opening files in the new tab and then type the file name
nmap <leader>o	:tabedit
"For going to the next tab
nmap <leader>n	:tabn<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      
"Ale lint settings
let g:ale_lint_on_enter = 1
" let g:ale_linters = {'cpp': ['clang']}
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay=100
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      
"Template settings
let g:tmpl_author_email = 'architsingh456@gmail.com'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      
"          ______    ____    ______                            "
"         |  ____|  / __ \  |  ____|                           "
"         | |__    | |  | | | |__                              "
"         |  __|   | |  | | |  __|                             "
"         | |____  | |__| | | |                                "
"         |______|  \____/  |_|                                "
"                                                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""      

set nocompatible

let mapleader = "\<Space>"

filetype off 

syntax off 

" set background=dark

set encoding=utf-8

" show line numbers
"set number

" set tabs to have 2 spaces
set ts=2

set autoindent

set expandtab

set showmatch


" vim-plug
call plug#begin('~/.vim/plugged')


Plug 'bling/vim-airline'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'scrooloose/syntastic'

Plug 'tpope/vim-fugitive'

Plug 'chriskempson/base16-vim'

Plug 'rizzatti/dash.vim'

Plug 'klen/python-mode'

Plug 'Valloric/YouCompleteMe'

Plug 'jiangmiao/auto-pairs'

Plug 'fatih/vim-go'	

Plug 'wakatime/vim-wakatime'
call plug#end()

map <C-n> :NERDTreeToggle<CR>

" closes nerdtree if its the only thing left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" colorscheme solarized

" format with goimports instead of gofmt
let g:go_fmt_command = "goimports"


Plug 'Valloric/YouCompleteMe', { 'do': './install.py --gocode-completer' }

au FileType go nmap <leader>r <Plug>(go-run)

au FileType go nmap <Leader>gd <Plug>(go-doc)

au FileType go nmap <Leader>e <Plug>(go-rename)

au BufRead,BufNewFile *.md set filetype=markdown

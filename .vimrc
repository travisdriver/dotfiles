set nocompatible              
filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
syntax on
Plugin 'bluz71/vim-moonfly-colors'
Plugin 'agude/vim-eldar'
Plugin 'reewr/vim-monokai-phoenix'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
call vundle#end()
filetype plugin indent on 

let python_highlight_all=1
set encoding=utf-8

xnoremap p pgvy

colorscheme eldar
set guifont=Bitstream\ Vera\ Sans\ Mono:h14
set number   
set showcmd
set wildmenu 
set showmatch 
set incsearch 
set hlsearch
set expandtab
set smartindent
set autoindent
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
set laststatus=2

let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

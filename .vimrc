set nocompatible              " be iMproved
set re=1
filetype off                  " required!
set shell=bash

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'vbundles/nerdtree'
Bundle 'vbundles/ctrlp'
Bundle 'vbundles/vim-rails'
Bundle 'airblade/vim-gitgutter' 
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-dispatch'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
"
"
"
"

let mapleader = ","
"let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'
let g:rspec_command = "Dispatch bundle exec rspec {spec}"

syntax on
set relativenumber

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <leader>n :NERDTreeToggle .<CR>
nnoremap <C-n> :NERDTreeToggle .<CR>
" vim-rspec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

set nowrap        " don't wrap lines
set tabstop=2     " a tab is four spaces
set backspace=indent,eol,start
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on
set shiftwidth=2  " number of spaces to use for
set shiftround    " use multiple of shiftwidth when
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all
set hlsearch
set incsearch

set nobackup
set noswapfile

set pastetoggle=<F2>
set mouse=a

set cursorcolumn
colorscheme ir_dark

set clipboard=unnamed

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Bundles

" Colors
Bundle 'tpope/vim-vividchalk'
Bundle 'altercation/vim-colors-solarized'
" Languanges
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-clojure-static'
"Bundle 'rosstimson/scala-vim-support'
" Tools
Bundle 'scrooloose/nerdcommenter'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'

syntax on
filetype plugin indent on     " required!

set background=dark
colorscheme solarized

"My own preferences
set hidden                        " Do not complain on unsaved buffers

set noeb vb t_vb=                 " Be quiet on errors
set guifont=Monaco:h11 
set ruler                         " Show line and column number

set encoding=utf-8
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set backspace=indent,eol,start    " backspace through everything in insert mode

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

set nu          " setting line numbers on
set nowrap      " no wrapping the lines please
set backupdir=~/.vim/_backup//    " where to put backup files.
set directory=~/.vim/_temp//      " where to put swap files.


" Mappings
map <leader>n :NERDTreeToggle<CR>
map <leader>tt :TagbarToggle<CR>
" Mapping ack to Cmd-Shift-F on Mac
map <D-F> :Ack<space>

" Enter to create newline in normal mode
nmap <cr> i<cr><Esc>

" vimclojure stuff. 
let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#ParenRainbow=1

" Ctrl-r on visual to search replace the selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

set runtimepath^=~/.vim/bundle/ctrlp.vim
let &termencoding=&encoding
set fileencodings=utf-8,gbk
set encoding=utf-8

set nocompatible
filetype off
syntax on
set rtp+=~/.vim/bundle/vundle

call vundle#begin()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdtree'
let NERDTreeWinPos='right'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>

Plugin 'python-mode/python-mode'

Plugin 'bling/vim-airline'
set laststatus=2

Plugin 'altercation/vim-colors-solarized' 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#end()
filetype plugin indent on

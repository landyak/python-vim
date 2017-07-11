 
set runtimepath^=~/.vim/bundle/ctrlp.vim
set fileencodings=utf-8,gbk,ucs-bom,bg18080,gb2312,cp936
set termencoding=utf-8
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
map <F2> :NERDTreeToggle<CR>	"<F2>键打开

Plugin 'python-mode/python-mode'

Plugin 'kien/ctrlp.vim'

Plugin 'vim-airline/vim-airline'
set laststatus=2  "永远显示状态栏
set t_Co=256      "在windows中用xshell连接打开vim可以显示色彩
let g:airline#extensions#tabline#enabled = 1 "默认是关闭的，打开后可以显示窗口tab和buffe

Plugin 'altercation/vim-colors-solarized' 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#end()
filetype plugin indent on

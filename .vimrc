"如果在tmux中使用vim，需要配置如下的终端类型
if exists('$TMUX')
	set  term=screen-256color
endif

set runtimepath^=~/.vim/bundle/ctrlp.vim
set fileencodings=utf-8,gbk,ucs-bom,bg18080,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set nu

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
  let g:airline_powerline_fonts = 1
  
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
" let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = '∄'
  let g:airline_symbols.whitespace = 'Ξ'

  " powerline symbols
 "let g:airline_left_sep = ''
 "let g:airline_left_alt_sep = ''
 "let g:airline_right_sep = ''
 "let g:airline_right_alt_sep = ''
 "let g:airline_symbols.branch = ''
 "let g:airline_symbols.readonly = ''
 "let g:airline_symbols.linenr = '☰'
 "let g:airline_symbols.maxlinenr = ''

  " old vim-powerline symbols
" let g:airline_left_sep = '⮀'
" let g:airline_left_alt_sep = '⮁'
" let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
" let g:airline_symbols.branch = '⭠'
" let g:airline_symbols.readonly = '⭤'

Plugin 'altercation/vim-colors-solarized' 
Plugin 'yianwillis/vimcdoc'			"Chinese helplang support

"Plugin 'Valloric/YouCompleteMe'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#end()
filetype plugin indent on

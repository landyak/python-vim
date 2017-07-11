# python-vim

vim configure file
add my first vim configure file for python

#Installl vundle for vim

1. 在~/目录下面创建 .vim 目录，然后再创建 .vim/bundle

2. cd ~/.vim/bundle 目录，然后执行 git clone https://github.com/gmarik/vundle.git 等待完成 

3. 在 ~/.vimrc这个文件的头部加上配置

#Install ctrlp for vim

1. Clone the plugin into a separate directory:

   $ cd ~/.vim
   $ git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
   Or if you prefer Mercurial:
   $ hg clone https://bitbucket.org/kien/ctrlp.vim bundle/ctrlp.vim

2. Add to your ~/.vimrc:

   set runtimepath^=~/.vim/bundle/ctrlp.vim

3. Run at Vim's command line:

   :helptags ~/.vim/bundle/ctrlp.vim/doc

#Install color schema "vim-colors-solarized"

1. add line to .vimrc 

   Plugin 'altercation/vim-colors-solarized'

2. run :VundleInstall 

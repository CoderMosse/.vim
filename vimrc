" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on


let g:ycm_global_ycm_extra_conf = "~./vim/ycm_extra_conf.py"
let g:pymode_rope_complete_on_dot = 0

set number
set tw=79
set nowrap
set fo-=t

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab



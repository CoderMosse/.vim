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
Plugin 'SirVer/ultisnips'

call vundle#end()
filetype plugin indent on

let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"
let g:pymode_rope_complete_on_dot = 0

function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
                return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction
au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"



set number
set tw=79
set nowrap
set fo-=t

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Easier way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set laststatus=2

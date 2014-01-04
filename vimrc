set nocompatible

syntax enable
color dw_orange

set softtabstop=4
set tabstop=4
set expandtab
set autoindent
set shiftwidth=4

set ruler

set iskeyword+=:

" au BufReadPost *.p[ml] retab!

map ,pt <Esc>:%! perltidy<CR>
map ,ptv <Esc>:'<,'>! perltidy<CR>

if has("multi_byte")
    set encoding=utf-8
    set termencoding=utf-8
    set fileencodings=utf-8
endif


call pathogen#infect()
call pathogen#helptags()

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
let g:jsx_ext_required = 0
colorscheme solarized

nnoremap <BS> X


nnoremap <F2> :e %<.cpp
nnoremap <F3> :e %<.hpp
nnoremap <F4> :e %<.m
nnoremap <F5> :e %<.h
let mapleader=","

nnoremap <C-t> :tabnew <CR>
nnoremap <C-l> <Esc>:tabn<CR>
nnoremap <C-h>  <Esc>:tabp<CR>

set number

" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


syntax on
set cursorline

"Searching"
set hlsearch
set ignorecase
set incsearch
set showmatch

set expandtab
set nowrap
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256


filetype plugin indent on


command -nargs=+ SReplace call StepReplace(<f-args>)
"makes use of register y
function StepReplace(...)
  if a:0 == 1
    let @y = input("Replace with: ", @y)
    let y = @y
    if @y =~ "\\d\\+$"
      let n = substitute(@y, ".\\{-}\\(\\d\\+\\)$", "\\1", "") + a:1
      let @y = substitute(@y, "\\(.\\{-}\\)\\d\\+$", "\\1".n, "")
    endif
    return y
  elseif a:0 == 3
    let @y = a:2
    execute "%s/".a:1."/\\=StepReplace(".a:3.")/".(&gdefault ? "" : "g")."c"
  else
    echo "Usage: SReplace <search> <substitute> <increment>"
  endif
endfunction

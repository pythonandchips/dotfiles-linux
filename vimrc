"MY VIMRC

call plug#begin('~/.vim/plugged')

"Language plugins
Plug 'vim-ruby/vim-ruby'

"Functions
Plug 'Lokaltog/vim-powerline'
Plug 'tpope/vim-fugitive'
Plug 'sjl/gundo.vim'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'tomtom/tcomment_vim'
Plug 'w0rp/ale'

"Navigation
Plug 'tpope/vim-endwise'
Plug 'vim-scripts/matchit.zip'
Plug 'mileszs/ack.vim'

call plug#end()

filetype plugin indent on
syntax on

let mapleader = ","
let maplocalleader = ","

let g:go_fmt_command = "goimports"

let g:netrw_special_syntax= 1
set autowrite
set autoread
set ruler
set nu
set nowrap
set timeoutlen=1000
set history=256
set mousehide
set mouse=a
set ts=2
set bs=2
set shiftwidth=2
set autoindent
set smarttab
set expandtab
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=l
set guioptions-=b
set guioptions-=T
set guifont=Andale\ Mono:h20
set showmatch
set shell=/bin/sh
set splitright
set noerrorbells
set novisualbell
set listchars=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<

let g:ale_lint_on_text_changed = "never"
let g:ale_lint_on_enter = 0
let g:ale_change_sign_column_color = 1

nnoremap <Leader>e :Explore . <CR>
nnoremap <Leader>E :Explore  <CR>
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
nnoremap <Leader>t :CtrlP<CR>
nnoremap <Leader>ls :ls<CR>
nnoremap <Leader>ln :bnext<CR>
nnoremap <Leader>lb :bprevious<CR>

"Custom Search
let g:ackprg = 'ag --vimgrep'
cnoreabbrev Ack Ack!
:nnoremap <Leader>f :Ack! <C-r><C-w> <CR>

"custom mappings
nnoremap <F5> :GundoToggle<CR>
nnoremap <F6> :TagbarToggle<CR>

"diff options
:set diffopt+=iwhite

hi! link netrwData Operator
hi! link netrwLib Operator
hi! link netrwMakeFile Operator
hi! link netrwClassify Constant
hi! link netrwHidePat Constant
hi! link netrwList Constant

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
autocmd BufNewFile,BufRead *.az set syntax=terraform
autocmd! bufwritepost .vimrc source ~/.vimrc

if has("autocmd")
  augroup templates
    autocmd BufNewFile *_spec.rb 0r ~/.vim/templates/template_spec.rb
    autocmd BufNewFile *.rb 0r ~/.vim/templates/template.rb
  augroup END
endif

"MY VIMRC

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'jgdavey/vim-blockle'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-markdown'
Plugin 'vim-scripts/matchit.zip'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ervandew/supertab'
Plugin 'pythonandchips/vim-handlebars'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'fatih/vim-go'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'scrooloose/syntastic'
Plugin 'elixir-lang/vim-elixir'
Plugin 'tomtom/tcomment_vim.git'
Plugin 'majutsushi/tagbar'
Plugin 'trevordmiller/nova-vim'
Plugin 'posva/vim-vue'
Plugin 'sekel/vim-vue-syntastic'

call vundle#end()

filetype plugin indent on
syntax on

let mapleader = ","
let maplocalleader = ","

let g:go_fmt_command = "goimports"


"syntatic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ["jsxhint"]


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

nnoremap <Leader>e :Explore . <CR>
nnoremap <Leader>E :Explore  <CR>
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
nnoremap <Leader>t :CtrlP<CR>
nnoremap <Leader>. :cd %:p:h<CR>
"map <Up> :cprev <CR>
"map <Down> :cnext <CR>
"custom mappings
nnoremap <Leader>r G=gg<C-o><C-o>
nnoremap <F5> :GundoToggle<CR>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

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

autocmd! bufwritepost .vimrc source ~/.vimrc

"set colour scheme
set background=dark
colorscheme solarized

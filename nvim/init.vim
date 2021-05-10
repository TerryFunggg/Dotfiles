let s:dein_dir = expand('~/.nvim/dein')
set runtimepath+=~/.nvim/dein/repos/github.com/Shougo/dein.vim
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let g:rc_dir = expand('~/.config/nvim/plugs')
  let s:toml = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on


set cursorline
set number
set nocompatible
syntax enable
set fileencodings=utf-8
set encoding=utf-8
"set title
set autoindent
"set background=dark
set nobackup
" replaced by lightline
set noshowmode
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set lazyredraw
"set mat=2
" Ignore case when searching
set ignorecase
set smarttab
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent

if has('nvim')
  set inccommand=split
endif

colorscheme ghdark 
let g:gh_color = "soft"
let g:lightline = {
      \ 'colorscheme': 'ghdark',
      \ }



" Keybindings
inoremap jk <esc>
nnoremap <leader>a ^
nnoremap <leader>e $


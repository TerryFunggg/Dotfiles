" Vim Init "{{{
" ---------------------------------------------------------------------
autocmd!
scriptencoding utf-8
set shell=zsh
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1
set ffs=unix,dos,mac
filetype plugin indent on
syntax enable
syntax on
set nocompatible
set lazyredraw
set nobackup
set backupskip=/tmp/*,/private/tmp/*
set wildmenu
set ruler
set cursorline
set number relativenumber
set nu rnu
"set noshowmode " replaced by lightline
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set display=lastline
set title
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set matchtime=2
set autoindent
set expandtab
"set mat=2
set smarttab
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

if has('nvim')
  set inccommand=split
endif
"}}}

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"}}}

" DeinInit "{{{
" ---------------------------------------------------------------------

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

"}}}

" Keymaps {{{
" ---------------------------------------------------------------------
if has("unix")
  let s:uname = system("uname -s")
  " If macos, add some stuffs
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
" import key maps
runtime ./maps.vim
"}}}


" Theme "{{{
" ---------------------------------------------------------------------
" true color
if exists("&termguicolors") && exists("&winblend")
  " set t_Co=256
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

"}}}


" Other "{{{
" ---------------------------------------------------------------------
set splitbelow
" open the go-to function in split, not another buffer
"let g:jedi#use_splits_not_buffers = "right"

"IndentLine config
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"NERDTree config
nnoremap <C-t> :NERDTreeToggle<CR>

" ack config
if executable('ag')
  " change search engine to ag
  let g:ackprg = 'ag --vimgrep'
  nmap sp :Ack
endif
"}}}


" vim: set foldmethod=marker foldlevel=0:

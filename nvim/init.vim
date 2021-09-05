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

set nocompatible
set lazyredraw
set nobackup
set wildmenu

" UI
set ruler
set cursorline
set number relativenumber
set nu rnu
"set noshowmode " replaced by lightline
set showcmd
set cmdheight=1
set laststatus=0
set scrolloff=10
set display=lastline
"
" File
"
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1
set ffs=unix,dos,mac

" Syntax
syntax enable
syntax on


" Search
"
set ignorecase
set smartcase
set hlsearch
set incsearch

" Brackets highlight
set showmatch
set matchtime=2

" Tab config
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

if has('nvim')
  set inccommand=split
endif

" Theme
set t_Co=256
"colorscheme ghdark 
"set background=light
"let g:gh_color = "soft"
"let g:lightline = {
      "\ 'colorscheme': 'ghdark',
      "\ }



" Keybindings
nnoremap <leader>a ^
nnoremap <leader>e $

inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-d> <del>

:map <F7> :w !xclip<CR><CR>
:vmap <F7> "*y
:map <S-F7> :r!xclip -o<CR>

" Deoplete config
let g:deoplete#enable_at_startup = 1
" Close the top preview window automatically
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" jedi-vim config
" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
"let g:jedi#use_splits_not_buffers = "right"

"IndentLine config
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"NERDTree config
nnoremap <C-t> :NERDTreeToggle<CR>

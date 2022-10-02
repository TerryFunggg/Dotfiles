call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'shaunsingh/nord.nvim'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'windwp/nvim-autopairs'

if has("nvim")
  Plug 'hoob3rt/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'

  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'

  Plug 'neovim/nvim-lspconfig'
  Plug 'folke/lsp-colors.nvim'
  Plug 'onsails/lspkind-nvim'

  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'


  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'
endif

call plug#end() 

lua <<EOF
require("nvim-autopairs").setup {}
EOF

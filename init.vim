call plug#begin()
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'karb94/neoscroll.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'dense-analysis/ale'
Plug 'max397574/better-escape.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'tpope/vim-surround'
call plug#end()

lua << EOF
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- Local separate configs
require('configs.nvim-lspconfig')
require('configs.nvim-treesitter')
require('configs.nvim-web-devicons')
require('configs.nvim-tree')
require('configs.lualine')

-- Direct setup configs
require('neoscroll').setup()

require("better_escape").setup({
  mapping = {"jk", "kj"},
})

require('gruvbox').setup({
  transparent_mode = true
})
EOF

colorscheme gruvbox
set number
set relativenumber
set expandtab
set tabstop=2
set shiftwidth=2
set mouse=
set completeopt=menu,menuone,noselect
autocmd TermOpen * setlocal nonumber norelativenumber


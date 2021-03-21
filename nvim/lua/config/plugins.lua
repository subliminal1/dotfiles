vim.cmd [[packadd packer.nvim]]
local packer = require('packer')

return packer.startup(function()
  use { 'wbthomason/packer.nvim', opt = true }
  use { 'sainnhe/edge' }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    }
  }

  use {
    {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
    'nvim-treesitter/playground'
  }

  use { 'neovim/nvim-lspconfig' }

  use {
    'nvim-lua/completion-nvim',
    'steelsojka/completion-buffers'
  }

  use {
    'norcalli/nvim-colorizer.lua'
  }

  use {
    'plasticboy/vim-markdown',
    'tpope/vim-commentary',
    'godlygeek/tabular',
    'nelsyeung/twig.vim',
    'vimwiki/vimwiki',
    'axelf4/vim-strip-trailing-whitespace',
  }
end)

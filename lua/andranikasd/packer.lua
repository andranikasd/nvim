vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Plugin Manager
  use 'wbthomason/packer.nvim'
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({ "miikanissi/modus-themes.nvim" })
  use { "ellisonleao/gruvbox.nvim" }
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('theprimeagen/harpoon')


  -- LSP Core
  use 'neovim/nvim-lspconfig'
  use {
    'williamboman/mason.nvim',
    requires = {
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      require('andranikasd.mason')
    end
  }

  -- Completion
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
    },
    config = function()
      require('andranikasd.cmp')
    end
  }
  
  use "blazkowolf/gruber-darker.nvim"
end)

require("lazy").setup({
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = {
      "nvim-lua/plenary.nvim"
    }
  },
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      vim.cmd("colorscheme catppuccin")
    end
  },

  "folke/which-key.nvim",
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  { 'mbbill/undotree' },
  { 'tpope/vim-fugitive' },

  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
      --- Uncomment these if you want to manage LSP servers from neovim
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    }
  },

  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },

  -- Display lsp errors in a bottom panel
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  }
})

vim.pack.add({
  -- File explorer
  { src = "https://github.com/nvim-neo-tree/neo-tree.nvim" },
  { src = "https://github.com/MunifTanjim/nui.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },

  -- Terminal
  { src = "https://github.com/akinsho/toggleterm.nvim" },

  -- Telescope
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },

  -- Markdown preview
  { src = "https://github.com/toppair/peek.nvim" },

  -- Utility
  { src = "https://github.com/tpope/vim-sleuth" },

  -- Treesitter
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },

  -- LSP tooling
  { src = "https://github.com/williamboman/mason.nvim" },
  { src = "https://github.com/williamboman/mason-lspconfig.nvim" },

  -- SSHFS
  { src = "https://github.com/nosduco/remote-sshfs.nvim" },

  -- Colorscheme
  { src = "https://github.com/folke/tokyonight.nvim" },


  -- Annotations

  { src = "https://github.com/walkersumida/fusen.nvim" },


  -- Mini
  { src = "https://github.com/nvim-mini/mini.nvim" },



  
})

-- plugin configs
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.mason")
require("plugins.toggleterm")
require("plugins.neo-tree")
require("plugins.peek")
require("plugins.sshfs")
require("plugins.fusen")
require("plugins.mini")
require("config.colorscheme")
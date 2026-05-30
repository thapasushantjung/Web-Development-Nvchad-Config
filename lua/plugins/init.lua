return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        "html",
        "cssls",
        "ts_ls",
        "tailwindcss",
        "eslint",
        "emmet_ls",
        "intelephense",
      },
    },
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        "prettier",
        "stylua",
        "pint",
      },
      auto_install = true,
    },
  },

  {
    "windwp/nvim-ts-autotag",
    ft = { "html", "javascript", "typescript", "javascriptreact", "typescriptreact" },
    opts = {},
  },

  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        tailwind = true,
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "php",
        "php_only",
        "blade",
      },
      autotag = {
        enable = true,
      },
    },
  },

  {
    "adalessa/laravel.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-neotest/nvim-nio",
      "nvim-telescope/telescope.nvim",
    },
    ft = { "php", "blade" },
    event = { "BufEnter composer.json" },
    config = function()
      require("laravel").setup {
        features = {
          pickers = {
            provider = "telescope",
          },
        },
      }
    end,
  },

  {
    "smoka7/hop.nvim",
    version = "*",
    lazy = false,
    opts = {
      keys = "etovxqpdygfblzhckisuran",
    },
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },

  {
    "dsznajder/vscode-es7-javascript-react-snippets",
  },
}

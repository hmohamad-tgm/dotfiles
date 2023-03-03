-- vim: set tabstop=2 shiftwidth=2 softtabstop=2:
require("lazy").setup({
  {
    "navarasu/onedark.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    init = function()
      require('onedark').load()
    end,
    opts = {
      style = 'dark'
    }
  },

  {
    "lewis6991/gitsigns.nvim",
    enabled = true,
    opts = {
      signcolumn = true
    }
  },

  {
    "folke/which-key.nvim",
    enabled = true,
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup({
        plugins = {
          spelling = true
        },
        operators = { gc = "Comments" },  -- does thi do anything?
      })
    end,
  },

  {
    'echasnovski/mini.comment',
    enabled = true,
    config = function()
      require("mini.comment").setup()
    end
  },

  {
    "windwp/nvim-autopairs",
    enabled = true,
    config = function()
      require("nvim-autopairs").setup({ })
    end

  },

  {
    "kylechui/nvim-surround",
    enabled = true,
    config = function()
      require("nvim-surround").setup({ })
    end

  },

  {
    'nvim-lualine/lualine.nvim',
    enabled = true,
    config = function()
      require("lualine").setup({
        options = {
          icons_enabled = false,
          component_separators = { left = '|', right = '|'},
          section_separators = { left = '', right = ''},
          globalstatus = true,
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {'%B', 'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'%l/%L:%3v'}
        },
        tabline = {
          lualine_b = {'buffers'},
          lualine_y = {'tabs'}
        },
      })
    end
  },

  {
    'nvim-treesitter/nvim-treesitter',
    enabled = true,
    build = ':TSUpdate',
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {'bash', 'bibtex', 'c', 'cpp', 'css', 'diff', 'gitcommit', 'go', 'help', 'html', 'ini', 'java', 'javascript', 'json', 'json5', 'jsonc', 'latex', 'make', 'markdown', 'markdown_inline', 'perl', 'php', 'python', 'regex', 'rust', 'smali', 'toml', 'typescript', 'vim', 'yaml'},
        highlight = {
          enable = true,
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<cr>",
            node_incremental = "<cr>",
            scope_incremental = "<tab>",
            node_decremental = "<s-tab>",
          },
        },
      })
    end
  },

  {
    "nvim-treesitter/nvim-treesitter-refactor",
    enabled =true,
    dependencies = {"nvim-treesitter/nvim-treesitter"},
    config = function()
      vim.opt.updatetime = 1000   -- used for highlight_definitions
      require("nvim-treesitter.configs").setup({
        refactor = {
          highlight_definitions = { enable = true},
          smart_rename = {
            enable = true,
            keymaps = {
              smart_rename = "<leader>r"
            },
          }
        },
      })
    end
  }

})


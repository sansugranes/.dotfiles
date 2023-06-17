-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
      'catppuccin/nvim',
      as = 'catppuccin',
      config = function()
    	  vim.cmd('colorscheme catppuccin')
          require('catppuccin').setup({
              transparent_background = true
          });
      end
  })

  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })

  use { 'nagy135/typebreak.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
        vim.keymap.set('n', '<leader>tb', require('typebreak').start, { desc = "Typebreak" })
    end
  }

  use({"ap/vim-css-color"})
  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
  use("nvim-treesitter/playground")
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context");

  use {'nvim-orgmode/orgmode',
    config = function ()
        require('orgmode').setup{}
    end
  }

  use {
      "folke/which-key.nvim",
      config = function()
          vim.o.timeout = true
          vim.o.timeoutlen = 300
          require("which-key").setup {
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")

  -- Snippets (for Markdown and more)
  use("SirVer/ultisnips")
  use("honza/vim-snippets")

  -- Distraction free writing
  use("junegunn/goyo.vim")

  -- Markdown syntax highlighting
  use("godlygeek/tabular")
  use("elzr/vim-json")
  use("plasticboy/vim-markdown")
  use("vim-pandoc/vim-pandoc-syntax")

  -- install without yarn or npm
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  use {
      "rest-nvim/rest.nvim",
      requires = { "nvim-lua/plenary.nvim" },
      config = function()
          require("rest-nvim").setup({
              -- Open request results in a horizontal split
              result_split_horizontal = false,
              -- Keep the http file buffer above|left when split horizontal|vertical
              result_split_in_place = false,
              -- Skip SSL verification, useful for unknown certificates
              skip_ssl_verification = false,
              -- Encode URL before making request
              encode_url = true,
              -- Highlight request on run
              highlight = {
                  enabled = true,
                  timeout = 150,
              },
              result = {
                  -- toggle showing URL, HTTP info, headers at top the of result window
                  show_url = true,
                  show_http_info = true,
                  show_headers = true,
                  -- executables or functions for formatting response body [optional]
                  -- set them to false if you want to disable them
                  formatters = {
                      json = "jq",
                      html = function(body)
                          return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
                      end
                  },
              },
              -- Jump to request line on run
              jump_to_request = false,
              env_file = '.env',
              custom_dynamic_variables = {},
              yank_dry_run = true,
          })
      end
  }

  use {
      "pangloss/vim-javascript",
      config = function()
          vim.g.javascript_plugin_jsdoc = 1
      end
    }
end)

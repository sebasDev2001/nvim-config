local transparent = false
return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      require('gruvbox').setup({
        transparent_mode = transparent,
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      require("tokyonight").setup({
        --- @usage 'storm'\'moon'\'night'
        style = "moon",
        transparent = transparent,
      })
    end,
  },
  {
    "catppuccin/nvim",
    lazy = true,
    priority = 1000,
    name = "catppuccin",
    config = function ()
      require('catppuccin').setup({
        flavour = "mocha",
        background = {
          light = "latte",
          dark = "mocha"
        },
        transparent_background = transparent,
        integrations = {
          telescope = true,
          nvimtree = true,
          mason = true,
          notify = false,
        },
      })
    end
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      require("solarized-osaka").setup({
        transparent = false,
        on_colors = function() end,
        on_highlights = function() end,
      })
    end,
  },
  {
    "shaunsingh/nord.nvim",
    lazy = true,
    priority = 1000,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    priority = 1000,
    config = function ()
      require('rose-pine').setup({
        --- @usage 'auto'|'main'|'moon'|'dawn'
        variant = 'main',
        disable_background = transparent,
      })
    end
  },
  {
    "olimorris/onedarkpro.nvim",
    lazy = true,
    priority = 1000,
    -- onedark, onelight, onedark_vivid, onedark_dark
    config = function ()
      require('onedarkpro').setup({
        options = {
          transparency = transparent,
        }
      })
    end,
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = true,
    priority = 1000,
    config = {
      transparent = transparent,
    }
  },
  {
    "rmehri01/onenord.nvim",
    lazy = true,
    priority = 1000,
    config = function ()
      require('onenord').setup({
        theme = "dark",
        disable = {
          background = transparent,
        }
      })
    end,
  },
  {
    "olivercederborg/poimandres.nvim",
    lazy = true,
    priority = 1000,
    config = function ()
      require('poimandres').setup {
        bold_vert_split = false, -- use bold vertical separators
        dim_nc_background = false, -- dim 'non-current' window backgrounds
        disable_background = transparent, -- disable background
        disable_float_background = false, -- disable background for floats
        disable_italics = false, -- disable italics
      }
    end
  },
  {
    "bluz71/vim-nightfly-colors",
    lazy = true,
    name = 'nightfly',
    priority = 1000,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
  },
}

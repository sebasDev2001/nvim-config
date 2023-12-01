return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      require('gruvbox').setup({
        transparent_mode = true,
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
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
        transparent_background = true,
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
      return {
        transparent = true,
      }
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
        variant = 'moon',
        disable_background = true,
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
          transparency = true,
        }
      })
    end,
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = true,
    priority = 1000,
    config = function ()
      require('nordic').setup({
        transparent_bg = true,
      })
    end,
  },
  {
    "rmehri01/onenord.nvim",
    lazy = true,
    priority = 1000,
    config = function ()
      require('onenord').setup({
        theme = "dark",
        disable = {
          background = true,
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
        disable_background = true, -- disable background
        disable_float_background = false, -- disable background for floats
        disable_italics = false, -- disable italics
      }
    end
  }

}

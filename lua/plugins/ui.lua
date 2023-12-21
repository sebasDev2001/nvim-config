return {
  {
    "rcarriga/nvim-notify",
    opts = {
      fps = 30,
      timeout = 5000,
      background_colour = "#000000",
      render = "compact",
      stages = "fade_in_slide_out",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "wombat",
      },
    },
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },

}

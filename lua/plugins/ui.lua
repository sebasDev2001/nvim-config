return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin", --catppuccin, onedark_dark
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = {
            hidden = true,
            ignored = true,
          },
          explorer = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
}

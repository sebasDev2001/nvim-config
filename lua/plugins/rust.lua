return {
  -- {
  --   "simrat39/rust-tools.nvim",
  --   ft = "rust",
  --   dependencies = "neovim/nvim-lspconfig",
  --
  --   config = function(_, opts)
  --     require("rust-tools").setup(opts)
  --   end,
  -- },
  {
    "mrcjkb/rustaceanvim",
    version = "^3",
    ft = {"rust"},
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 0
    end,
  },
}

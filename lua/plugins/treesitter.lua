return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "vim",
      "lua",
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",
      "c",
      "markdown",
      "markdown_inline",
      "python",
      "rust",
    },
    indent = {
      enable = true,
      -- disable = {
      --   "python"
      -- },
    },
  },
}

return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      lua = { "stylua" },
      python = { "black", "isort" },
      go = { "goimports", "gofmt" },
      rust = { "rustfmt" },
      c = { "clang_format" },
      cpp = { "clang_format" },
    },
  },
}

return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- lua stuff
      "lua-language-server",
      "stylua",

      -- web dev stuff
      "css-lsp",
      "html-lsp",
      "typescript-language-server",
      "deno",
      "prettier",

      -- c/cpp stuff
      "clangd",
      "clang-format",

      --python
      "pyright",
      "mypy",
      "ruff",
      "black",
      "isort",

      --rust
      "rust-analyzer",

      --Go
      "gopls",
    },
  },
}

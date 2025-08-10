if true then return {} end
return {
  "nvimtools/none-ls.nvim",
  event = "LazyFile",
  config = function()
    local nl = require("null-ls")
    local b = nl.builtins
    nl.setup({
      sources = {
        -- webdev stuff
        b.formatting.prettier.with({
          filetypes = { "html", "markdown", "css", "json", "javascript", "typescript" },
        }), -- so prettier works only on these filetypes

        -- Lua
        b.formatting.stylua,

        -- Python
        b.formatting.black.with({
          extra_args = { "--line-length=120" },
        }),
        --Go
        b.formatting.gofumpt,
        b.formatting.goimports_reviser,
      },
    })
  end,
}

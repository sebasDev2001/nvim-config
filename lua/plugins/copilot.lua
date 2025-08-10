return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "BufReadPost",
  config = function()
    require("copilot").setup({
    panel = {
      enabled = true,
    },
    suggestion = {
      enabled = not vim.g.ai_cmp,
      auto_trigger = true,
      debounce = 50,
      hide_during_coimpletion = vim.g.ai_cmp,
      keymap = {
        accept = false,
        next = "<M-]>",
        prev = "<M-[>",
      }
    },
    file_types = {
      yaml = true,
      markdown = true,
      help = true,
    }
  })
  if true then
    vim.cmd("Copilot disable")
  end
  end
}

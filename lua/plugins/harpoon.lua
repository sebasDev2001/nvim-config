return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({})

    --keymaps
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
      { desc = "Open hardpoon window" })
    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end,
      {desc = "Append buffer to harpoon"})

    vim.keymap.set("n", "<C-1>", function () harpoon:list():select(1) end)
    vim.keymap.set("n", "<C-2>", function () harpoon:list():select(2) end)
    vim.keymap.set("n", "<C-3>", function () harpoon:list():select(3) end)
    vim.keymap.set("n", "<C-4>", function () harpoon:list():select(4) end)
  end,
}

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
--local opts = { noremap = true, silent = true }

keymap.set({ "n", "v" }, ";", ":")
keymap.set("n", "dw", "diw")
keymap.set("n", "dW", "diW")
keymap.set("n", "cw", "ciw")
keymap.set("n", "cW", "ciW")
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "ss", ":split<Return><C-w>w")
keymap.set("n", "sv", ":vsplit<Return><C-w>w")

keymap.set("n", "<C-n>", function()
  require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
end, {desc="Open/Close neo-tree"})


--buffers
keymap.set("n", "<tab>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
keymap.set("n", "<S-tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })

--nvterm
local terminal = require("nvterm.terminal")

keymap.set({"n","v","i"}, "<A-v>", function ()
    terminal.toggle('vertical')
end, {desc = "Toggle vertical terminal"})
keymap.set({"n","v","i"}, "<A-h>", function ()
    terminal.toggle('horizontal')
end, {desc = "Toggle horizontal terminal"})
keymap.set({"n","v","i"}, "<A-i>", function ()
    terminal.toggle('float')
end,{desc = "Toggle floating terminal"})
keymap.set("t","<C-x>", vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true),
  {noremap = true, silent = true, expr = true, desc = "Exit terminal mode"})

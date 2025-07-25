-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set({ "n", "v" }, ";", ":")
keymap.set("n", "dw", "diw")
keymap.set("n", "dW", "diW")
keymap.set("n", "cw", "ciw")
keymap.set("n", "cW", "ciW")
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<tab>", ">>")
keymap.set("n", "<S-tab>", "<<")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Increment/decrement numbers
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Split and vsplit
keymap.set("n", "ss", ":split<Return><C-w>w", opts)
keymap.set("n", "sv", ":vsplit<Return><C-w>w", opts)

-- Tabs
keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "tc", ":tabclose<Return>", opts)
keymap.set("n", "tn", ":tabnext<Return>", opts)
keymap.set("n", "tp", ":tabprev<Return>", opts)

-- Open file-tree
keymap.set("n", "<C-n>", function()
  require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
end, {desc="Open/Close neo-tree"})

-- Buffers
-- keymap.set("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
-- keymap.set("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- NvTerm
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
keymap.set("t", "<C-x>", "<C-\\><C-N>", {noremap = true, silent = true, desc = "Exit terminal mode"})

--Copilot
keymap.set("n", "<leader>Ce",":Copilot enable<Return>", {noremap = true, silent = true, desc = "Enable copilot"})
keymap.set("n", "<leader>Cd",":Copilot disable<Return>", {noremap = true, silent = true, desc = "Disable copilot"})

--Telesscope find all files
keymap.set("n", "<leader>fa",":Telescope find_files hidden=true<Return>", {noremap = true, silent = true, desc = "Find Files (include all)"})

-- Inaly Hints
vim.lsp.inlay_hint.enable(false)
if vim.lsp.inlay_hint then
  vim.keymap.set(
    "n",
    "<leader>uh",
    function ()
      vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled(nil))
    end,
    {desc = "Toggle Inlay Hints"}
  )
end

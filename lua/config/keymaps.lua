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

keymap.set("t", "<C-x>", "<C-\\><C-N>", {noremap = true, silent = true, desc = "Exit terminal mode"})

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
keymap.del("n", "gco")
keymap.del("n", "gcO")

-- Grep
keymap.set("n", "fG", function ()
  -- ":lua Snacks.dashboard.pick('live_grep')"
  require("snacks").dashboard.pick("live_grep")
end ,{desc = "Live Grep"})

-- opencode
local opencode = require("opencode")

keymap.set("n", "<leader>ot", function()
  opencode.toggle()
end, { desc = "Toggle embedded" })
keymap.set("n", "<leader>oa", function()
  opencode.ask("@cursor: ")
end, { desc = "Ask about this" })
keymap.set("v", "<leader>oa", function()
  opencode.ask("@selection: ")
end, { desc = "Ask about selection" })
keymap.set("n", "<leader>o+", function()
  opencode.prompt("@buffer", { append = true })
end, { desc = "Add buffer to prompt" })
keymap.set("v", "<leader>o+", function()
  opencode.prompt("@selection", { append = true })
end, { desc = "Add selection to prompt" })
keymap.set("n", "<leader>oe", function()
  opencode.prompt("Explain @cursor and its context")
end, { desc = "Explain this code" })
keymap.set("n", "<leader>on", function()
  opencode.command("session_new")
end, { desc = "New session" })
keymap.set("n", "<S-C-u>", function()
  opencode.command("messages_half_page_up")
end, { desc = "Messages half page up" })
keymap.set("n", "<S-C-d>", function()
  opencode.command("messages_half_page_down")
end, { desc = "Messages half page down" })
keymap.set({ "n", "v" }, "<leader>os", function()
  opencode.select()
end, { desc = "Select prompt" })

--Copilot
keymap.set("n", "<leader>Ce", ":Copilot enable<Return>", { noremap = true, silent = true, desc = "Enable Copilot" })
keymap.set("n", "<leader>Cd", ":Copilot disable<Return>", { noremap = true, silent = true, desc = "Disable Copilot" })
keymap.set("i", "<C-e>", function()
  require("copilot.suggestion").dismiss()
end, { desc = "Dismiss Copilot suggestion" })
keymap.set("n", "<leader>Cp", function()
  require("copilot.suggestion").toggle_auto_trigger()
end, { desc = "Toggle Copilot auto-trigger" })

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


-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
local opt = vim.opt

vim.g.autoformat = false
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])


-- Line Numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentations
opt.autoindent = true
opt.virtualedit = "insert"

-- search settiongs
opt.ignorecase = true
opt.smartcase = true

-- clipboard
opt.clipboard:append("unnamedplus")

--terminals_first
opt.shell = "pwsh"
opt.shellcmdflag = "-nologo -noprofile -ExecutionPolicy RemoteSigned -command"
opt.shellxquote = ""

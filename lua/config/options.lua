local opt = vim.opt

vim.g.autoformat = false
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- python options
-- vim.g.lazyvim_python_lsp = "pyright"
-- vim.g.lazyvim_python_ruff = "ruff"

-- Line Numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentations
opt.autoindent = true
opt.smartindent = true
opt.virtualedit = "insert"

-- search settiongs
opt.ignorecase = true
opt.smartcase = true

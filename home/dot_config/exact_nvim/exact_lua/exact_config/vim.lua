vim.opt.termguicolors = true

vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.tabstop = 2 -- Amount to indent with << and >>
vim.opt.softtabstop = 2 -- How many spaces are shown per Tab
vim.opt.shiftwidth = 2 -- How many spaces are applied when pressing Tab

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.wo.number = true
vim.wo.relativenumber = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- backspace
vim.opt.backspace = { "start", "eol", "indent" }

-- clipboard
vim.opt.clipboard:append("unnamedplus") --use system clipboard as default
vim.opt.hlsearch = true


-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabwidth 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- wrap lines
vim.opt.wrap = true

-- file backup
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- search highlight
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- 
vim.opt.termguicolors = true

-- keep cursor at line
vim.opt.scrolloff = 8

-- sign column
vim.opt.signcolumn = "yes"

--
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

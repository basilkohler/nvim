vim.g.mapleader = " "

function Map(mode, from, to, opts)
    vim.keymap.set(mode, from, to, opts)
end

-- open file explorer
Map("n", "<leader>fv", vim.cmd.Ex)

-- open undo tree
Map("n", "<leader>u", ":UndotreeShow<CR>")

-- move selected lines with J and K
Map("v", "J", ":m '>+1<CR>gv=gv")
Map("v", "K", ":m '<-2<CR>gv=gv")

-- join lines with cursor staying at the start
Map("n", "J", "mzJ`z")

-- move cursor to middle when going half page down
Map("n", "<C-d>", "<C-d>zz")
Map("n", "<C-u>", "<C-u>zz")

-- move cursor to middle when going half page down
Map("n", "n", "nzzzv")
Map("n", "N", "Nzzzv")


-- when using yank - select - paste, the select is added to registry.
-- instead keep initially yanked by sending the select to void registry
Map("x", "<leader>p", "\"_dP")
-- when deleting, send to void
Map({ "n", "v" }, "<leader>d", "\"_d")

-- copy to system clipboard
Map({ "n", "v" }, "<leader>y", [["+y]])
Map("n", "<leader>Y", [["+Y]])

-- in visual block select, when C-c it does not save changes (like it does with ESC)
Map("i", "<C-c>", "<Esc>")

-- disable 'replay last recorded macro'
Map("n", "Q", "<nop>")

-- format buffer / current file
Map("n", "<leader>bf", vim.lsp.buf.format)


-- Quickfix list
Map("n", "<leader>q", function()
    ToggleQuickfixList() -- from plugin milkypostman/vim-togglelist
end)
Map("n", "<C-k>", "<cmd>cnext<CR>zz")
Map("n", "<C-j>", "<cmd>cprev<CR>zz")
Map("n", "<leader>k", "<cmd>lnext<CR>zz")
Map("n", "<leader>j", "<cmd>lprev<CR>zz")

-- substitute current word
Map("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

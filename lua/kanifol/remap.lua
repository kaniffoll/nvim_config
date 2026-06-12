-- leader key
vim.g.mapleader = " "
-- exit from file
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move rows in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- smart row merge
vim.keymap.set("n", "J", "mzJ`z")

-- copy in system buffer
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- move rows left in right in visual mode
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- disabling Q
vim.keymap.set("n", "Q", "<nop>")

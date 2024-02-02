local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- remap leader key to <space>
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- buffers
keymap("n", "<leader>bw", ":w<cr>", { noremap = true, silent = true, desc = "[B]uffer [W]rite" })
-- keymap("n", "<S-l>", ":bnext<cr>", { noremap = true, silent = true, desc = "[B]uffer [N]ext" })
keymap("n", "<leader>bn", ":bnext<cr>", { noremap = true, silent = true, desc = "[B]uffer [N]ext" })
-- keymap("n", "<S-h>", ":bprev<cr>", { noremap = true, silent = true, desc = "[B]uffer [P]revious" })
keymap("n", "<leader>bp", ":bprev<cr>", { noremap = true, silent = true, desc = "[B]uffer [P]revious" })
keymap("n", "<leader>bd", ":bdelete<cr>", { noremap = true, silent = true, desc = "[B]uffer [D]elete" })

-- moving lines around
keymap("n", "<M-j>", ":m .+1<cr>", opts)
keymap("n", "<M-k>", ":m .-2<cr>", opts)
keymap("i", "<M-j>", "<Esc>:m .+1<cr>==gi", opts)
keymap("i", "<M-k>", "<Esc>:m .-2<cr>==gi", opts)
keymap("v", "<M-j>", ":m '>+1'<cr>gv=gv", opts)
keymap("v", "<M-k>", ":m '<-2'<cr>gv=gv", opts)

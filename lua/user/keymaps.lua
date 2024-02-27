local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- keymap("", "<Space>", "<Nop>", opts)
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
keymap({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- MEMEME

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

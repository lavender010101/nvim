local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
-- keymap("", "r", "<Nop>", opts)
vim.g.mapleader = "<Space>"
vim.g.maplocalleader = "<Space>"
vim.g.leader = "<Space>"

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)


-- cursor moving
keymap("n", "H", "5h", opts)
keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)
keymap("n", "L", "5l", opts)
keymap("n", "W", "5w", opts)
keymap("n", "B", "5b", opts)
keymap("n", ";", "0", opts)
keymap("n", "'", "$", opts)

keymap("v", "H", "5h", opts)
keymap("v", "J", "5j", opts)
keymap("v", "K", "5k", opts)
keymap("v", "L", "5l", opts)
keymap("v", "W", "5w", opts)
keymap("v", "B", "5b", opts)
keymap("v", ";", "0", opts)
keymap("v", "'", "$", opts)



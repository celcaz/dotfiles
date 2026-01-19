

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- salvar
keymap("n", "<leader>w", "<cmd>w<CR>", opts)

-- sair
keymap("n", "<leader>q", "<cmd>q<CR>", opts)

-- sair sem salvar
keymap("n", "<leader>Q", "<cmd>q!<CR>", opts)

-- splits
keymap("n", "<leader>sv", "<cmd>vsplit<CR>", opts)
keymap("n", "<leader>sh", "<cmd>split<CR>", opts)

-- navegação entre splits
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


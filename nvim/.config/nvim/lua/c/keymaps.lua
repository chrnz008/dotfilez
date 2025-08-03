-- Terminal mode: <Esc> to exit to normal mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- Disable highlight on double <Esc>
vim.keymap.set("n", "<Esc><Esc>", "<cmd>noh<CR><Esc>", { noremap = true, silent = true, desc = "Clear search highlight" })

-- Smart window navigation
-- vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Close current buffer + tab and go to previous
vim.keymap.set("n", "<leader>bd", ":Bclose<CR>:tabclose<CR>gT", { noremap = true, silent = true, desc = "Close buffer and tab" })


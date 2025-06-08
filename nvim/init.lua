vim.g.mapleader = ' '

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("c.plugins")

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

vim.opt.clipboard = 'unnamedplus'
vim.opt.number = true
vim.opt.relativenumber = true 
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- nvim-tree binds 
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- nvim-ale config
vim.cmd [[
  let g:ale_linters = {
      \ 'typescript': ['tsserver'],
      \ 'typescriptreact': ['tsserver'],
      \ }
  let g:ale_fixers = {
      \ 'typescript': ['prettier'],
      \ 'typescriptreact': ['prettier'],
      \ }
  let g:ale_fix_on_save = 1
]]

-- telescope binds
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


-- Map <leader>t to open terminal in normal mode
vim.keymap.set('n', '<leader>t', ':botright split | terminal<CR>', { desc = "Open Terminal (split bottom)" })

-- cp (not what you think)

-- Compile with optimizations (F8)
vim.keymap.set('n', '<F8>', function()
  vim.cmd("w")  -- Save the file
  vim.cmd('!g++ -std=c++17 -Wshadow -Wall -o "%<" "%" -O2 -Wno-unused-result')
end, { silent = true })

-- Build with debug and sanitizers (F9)
vim.keymap.set('n', '<F9>', function()
  vim.cmd("w")  -- Save the file
  vim.cmd('!g++ -std=c++17 -Wshadow -Wall -o "%<" "%" -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG')
end, { silent = true })

-- Run the compiled output (F6)
vim.keymap.set('n', '<F6>', function()
  vim.cmd("w")  -- Save the file
  local output = vim.fn.expand("%:r")
  vim.cmd('!./' .. output)
end, { silent = true })


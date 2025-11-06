-- Highlight Unwanted Whitespace
vim.api.nvim_set_hl(0, "RedundantWhitespace", { ctermbg = 10, bg = "#00ff00" })

vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "*",
  callback = function()
    vim.fn.matchadd("RedundantWhitespace", [[\s\+$\| |\+\ze\t]])
  end,
})

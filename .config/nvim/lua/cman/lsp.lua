-- LSP
-------------------------------------------------------------

--enable-lsp-server
vim.lsp.enable({'clangd','lua_ls','rust-analyzer'})

vim.keymap.set('n','<leader>lf',vim.lsp.buf.format) --or use gq

-- autocompletion
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

-- vim.diagnostic.config({
--   -- virtual_lines = true
--   -- virtual_lines = {
--    -- Only show virtual line diagnostics for the current cursor line
--    -- current_line = true
--   },
-- })
--

vim.opt.completeopt:append("noinsert")

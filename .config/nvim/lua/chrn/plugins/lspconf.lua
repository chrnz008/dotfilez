local lspconfig = require("lspconfig")

-- Dart/Flutter LSP
lspconfig.dartls.setup {
  cmd = { "C:\\chrdev\\flutter\\bin\\cache\\dart-sdk\\bin\\dart.exe", "language-server", "--protocol=lsp" },
  filetypes = { "dart" },
  init_options = {
    closingLabels = true,
    flutterOutline = true,
    onlyAnalyzeProjectsWithOpenFiles = false,
    outline = true,
    suggestFromUnimportedLibraries = true,
  },
  on_attach = function(_, bufnr)
    local opts = { noremap=true, silent=true, buffer=bufnr }
    local keymap = vim.keymap.set

    -- -- LSP keymaps
    -- keymap("n", "gd", vim.lsp.buf.definition, opts)      -- go to definition
    -- keymap("n", "K", vim.lsp.buf.hover, opts)           -- hover documentation
    -- keymap("n", "<leader>rn", vim.lsp.buf.rename, opts) -- rename symbol
    -- keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- code actions
  end,
}


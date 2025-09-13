-- lua/chrn/plugins/telescope.lua
local has_telescope, telescope = pcall(require, "telescope")
if not has_telescope then
  return
end

-- Load fzf extension if available
pcall(function() telescope.load_extension('fzf') end)

-- Telescope setup
telescope.setup({
  defaults = {
    wrap_results = true,
    layout_strategy = "vertical",
    layout_config = {
      vertical = {
        width = 0.9,
        preview_cutoff = 10,
      },
    },
    mappings = {
      i = {
        ["<esc>"] = require("telescope.actions").close,
        ["<C-Down>"] = require("telescope.actions").cycle_history_next,
        ["<C-Up>"] = require("telescope.actions").cycle_history_prev,
      },
    },
  },
  pickers = {
    find_files = { wrap_results = true },
    buffers = { sort_mru = true, ignore_current_buffer = true },
    diagnostics = { wrap_results = true },
    lsp_definitions = { wrap_results = true },
    lsp_references = { wrap_results = true },
  },
})

-- Keymaps for Telescope
local builtin = require('telescope.builtin')
local opts = { noremap = true, silent = true }

-- Files & search
vim.keymap.set('n', '<leader>ff', builtin.find_files, opts)
vim.keymap.set('n', '<leader>fw', builtin.live_grep, opts)
vim.keymap.set('n', '<leader>fc', builtin.current_buffer_fuzzy_find, opts)
vim.keymap.set('n', '<leader>fo', function()
  builtin.oldfiles({ prompt_title = "Recent files", sort_mru = true })
end, opts)

-- Buffers & marks
vim.keymap.set('n', '<leader>fb', builtin.buffers, opts)
vim.keymap.set('n', '<leader>fm', builtin.marks, opts)

-- LSP & diagnostics
vim.keymap.set('n', '<leader>ld', builtin.diagnostics, opts)
vim.keymap.set('n', '<leader>ls', function()
  local aerial_avail = pcall(require, "aerial")
  if aerial_avail then
    require("telescope").extensions.aerial.aerial()
  else
    builtin.lsp_document_symbols()
  end
end, opts)

-- Command history
vim.keymap.set('n', '<leader>:', function()
  builtin.command_history({ prompt_title = "Command history" })
end, opts)


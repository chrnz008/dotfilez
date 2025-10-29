-- lua/chr/plugins/blink.lua
local ok, blink = pcall(require, 'blink.cmp')
if not ok then
  return  -- safely exit if plugin isn't loaded yet
end

blink.setup({
    keymap = { preset = 'default' },

    appearance = {
        nerd_font_variant = 'mono',
    },

    completion = { documentation = { auto_show = false } },

    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" },
})

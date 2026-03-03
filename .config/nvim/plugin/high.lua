local name = vim.g.colors_name

if name == "wildcharm" or name == "slate" or name == "habamax" then
  vim.api.nvim_set_hl(0, "VertSplit", { bg = "NONE" })
end

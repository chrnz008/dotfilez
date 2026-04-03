local coloname = vim.g.colors_name

local hl = vim.api.nvim_set_hl

if coloname == "wildcharm" or coloname == "slate" or coloname == "habamax" then
	hl(0, "VertSplit", { bg = "NONE" })
end

if coloname == 'quiet' then
	--this are stripped see https://github.com/neutaaaaan/iosvkem
	--opend a issue for cursors
	--monosvkem
	hl(0, "Added", { fg = "LimeGreen" })
	hl(0, "Changed", { fg = "DodgerBlue" })
	hl(0, "Removed", { fg = "Red" })
	if vim.o.background == "dark" then
		hl(0, "Cursor", { fg = "#dadada", bg = "#000000" })
		hl(0, "CursorLineNr", { fg = "#20bbfc", bg = "#000000", cterm = {} })
		hl(0, "Special", { fg = "#d02b61", bg = "NONE", cterm = {} })
		hl(0, "String", { fg = "#5688af", bg = "#000000", cterm = {} })
		hl(0, "TitleBar", { bg = "#303030" })
		hl(0, "StatusLine", { fg = "#a8a8a8", bg = "#1c1c1c" })
	else
		hl(0, "Cursor", { fg = "#000000", bg = "#d7d7d7" })
		hl(0, "CursorLineNr", { fg = "#080808", bg = "#d7d7d7", cterm = {} })
		hl(0, "Special", { fg = "#aa053b", bg = "NONE", cterm = {} })
		hl(0, "String", { fg = "#0056b7", bg = "#d7d7d7", cterm = {} })
	end
end

--halfbaked

-- inherit from terminal
function inherit()
	for _, group in ipairs({
		"Normal",
		"NormalFloat",
	}) do
		vim.api.nvim_set_hl(0, group, { bg = "none" })
	end
end

local function apply_highlights()
	local coloname = vim.g.colors_name

	local hl = vim.api.nvim_set_hl

	if coloname == "wildcharm" or coloname == "slate" or coloname == "habamax" then
		hl(0, "VertSplit", { bg = "NONE" })
	end

	if coloname == 'quiet' then
		--this are stripped see https://github.com/neutaaaaan/monosvkem
		--opend a issue for cursors
		--monosvkem
		local normal = {bg="#181818",fg="#dadada"}
		if vim.o.background == "dark" then
			hl(0, "Normal", { bg = normal.bg ,cterm = {}})
			hl(0, "Cursor", { fg = normal.fg, bg = normal.bg })
			hl(0, "CursorLineNr", { fg = "#20bbfc", bg = normal.bg, cterm = {} })
			hl(0, "Special", { fg = "#d02b61", bg = "NONE", cterm = {} })
			hl(0, "String", { fg = "#5688af", bg = normal.bg, cterm = {} })
			hl(0, "TitleBar", { bg = "#303030" })
			hl(0, "StatusLine", { fg = "#a8a8a8", bg = "#1c1c1c" })
		else
			hl(0, "Cursor", { fg = normal.bg, bg = "#d7d7d7" })
			hl(0, "CursorLineNr", { fg = "#080808", bg = "#d7d7d7", cterm = {} })
			hl(0, "Special", { fg = "#aa053b", bg = "NONE", cterm = {} })
			hl(0, "String", { fg = "#0056b7", bg = "#d7d7d7", cterm = {} })
			hl(0, "StatusLine", { bold = true, fg = "#eeeeee", bg = "#626262", cterm = {} })
		end
	end
end

apply_highlights() --appy at the start

--apply whenever theme changed
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = apply_highlights
})

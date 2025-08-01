--fat cursor
vim.opt.gcr =""
--
vim.opt.nu= true
vim.opt.rnu= true

--UI
vim.opt.backspace = "eol,start,indent"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.lazyredraw = true
vim.opt.magic = true
vim.opt.showmatch = true
vim.opt.mat = 2
vim.opt.tm = 500
vim.opt.foldcolumn = "1"
vim.opt.so = 7

-- Syntax and colors
vim.opt.regexpengine = 0

-- Files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Tabs & Indentation
vim.opt.expandtab=false
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.linebreak = true
vim.opt.textwidth = 500
vim.opt.smartindent = true
vim.cmd([[autocmd FileType c,cpp setlocal cindent]])
vim.opt.wrap = true

--
vim.opt.hlsearch=true
vim.opt.incsearch=true

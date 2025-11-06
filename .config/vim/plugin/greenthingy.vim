"Highlight Unwanted Whitespace
highlight RedundantWhitespace ctermbg=10 guibg=green
autocmd BufWinEnter * match RedundantWhitespace /\s\+$\| |\+\ze\t/

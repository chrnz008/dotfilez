"Highlight Unwanted Whitespace
highlight RedundantWhitespace ctermbg=green guibg=green
autocmd BufWinEnter * match RedundantWhitespace /\s\+$\| |\+\ze\t/

----- visual enhance -----
-- line number
vim.o.relativenumber = true

-- indent
vim.o.tabstop=4
vim.o.shiftwidth=4
vim.o.expandtab=true
vim.o.smartindent=true

-- color and theme
vim.o.termguicolors=true
vim.cmd [[
try
  colorscheme deus
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

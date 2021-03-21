vim.g.mapleader = ' '

vim.wo.relativenumber = true
vim.wo.cursorline     = true
vim.wo.signcolumn = "number"

vim.o.autoindent    = true
vim.o.background    = "dark"
vim.o.backup        = false
vim.o.clipboard     = "unnamedplus"
vim.o.completeopt   = "menuone,noinsert,noselect"
vim.o.conceallevel  = 2
vim.o.expandtab     = true
vim.o.fillchars     = "fold: "
vim.o.hidden        = true
vim.o.hlsearch      = false
vim.o.shiftwidth    = 4
vim.o.softtabstop   = 4
vim.o.spell         = false
vim.o.swapfile      = false
vim.o.tabstop       = 4
vim.o.termguicolors = true
vim.o.wildmode      = "longest:full,full"
vim.o.wrap          = false
vim.o.writebackup   = false
vim.wo.list         = true
vim.wo.listchars    = "tab:> ,trail:-,nbsp:+,eol:↵"

-- Hack
vim.api.nvim_set_var('vimwiki_folding', 'expr')

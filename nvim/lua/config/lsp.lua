local lsp = require('lspconfig')

lsp.intelephense.setup({
  init_options = { licenceKey = "00R7CVDYEXOB400" },
})

lsp.tsserver.setup({})

local remap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
remap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
remap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
remap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
remap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
remap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)

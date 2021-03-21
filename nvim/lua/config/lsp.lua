local lsp = require('lspconfig')

local opts = {}
local key = os.getenv("INTELEPHENSE_KEY")
if key ~= nil then
  opts.licenceKey = key
end

lsp.intelephense.setup({
  init_options = opts
})

lsp.tsserver.setup({})

local remap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
remap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
remap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
remap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
remap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
remap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)

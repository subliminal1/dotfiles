local actions = require('telescope.actions')
local telescope = require('telescope')

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<c-j>"] = actions.move_selection_next,
        ["<c-k>"] = actions.move_selection_previous,
        ["<c-u>"] = "<c-w>",
        ["<esc>"] = actions.close,
      },
      n = {
        ["<esc>"] = actions.close,
      },
    },
  },
})


local remap = vim.api.nvim_set_keymap
local opts  = { noremap = true, silent = true }

remap("n", "<leader>f", ":Telescope find_files<CR>", opts)
remap("n", "<leader>c", ":Telescope find_files cwd=%:h<CR>", opts)
remap("n", "<leader>b", ":Telescope buffers<CR>", opts)
remap("n", "<leader>h", ":Telescope oldfiles<CR>", opts)
remap("n", "<leader>t", ":Telescope treesitter<CR>", opts)
remap("n", "<leader>e", ":Telescope lsp_document_diagnostics<CR>", opts)
remap("n", "<leader>E", ":Telescope lsp_workspace_diagnostics<CR>", opts)
remap("n", "<leader>o", ":Telescope lsp_document_symbols<CR>", opts)

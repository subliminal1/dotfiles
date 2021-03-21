-- Language Servers
require('lspconfig').intelephense.setup{
  init_options = {licenceKey = "00R7CVDYEXOB400"},
}
require('lspconfig').tsserver.setup{}

-- Telescope
local telescope_actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<c-j>"] = telescope_actions.move_selection_next,
        ["<c-k>"] = telescope_actions.move_selection_previous,
        ["<c-u>"] = "<c-w>",
        ["<esc>"] = telescope_actions.close,
      },
      n = {
        ["<esc>"] = telescope_actions.close,
      },
    },
  },
}

-- Tree Sitter
require('nvim-treesitter.configs').setup{
  ensure_installed = "maintained",
  highlight = { enable = true },
  indent = { enable = true },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false -- Whether the query persists across vim sessions
  },
  query_linter = {
    enable = false,
    use_virtual_text = true,
    lint_events = {"BufWrite", "CursorHold"},
  },
}

-- Completion

vim.g.completion_chain_complete_list = {
  default = {
    { complete_items = { 'lsp', 'snippet' } },
    { complete_items = { 'buffers' } },
    { mode = { '<c-p>' } },
    { mode = { '<c-n>' } }
  },
}

vim.g.completion_trigger_keyword_length = 2
vim.g.completion_confirm_key = "<C-y>"
vim.g.completion_sorting = "length"
vim.g.completion_auto_change_source = 1
vim.g.completion_timer_cycle = 40
vim.g.completion_matching_strategy_list = { 'substring' }
vim.cmd([[autocmd BufEnter * lua require'completion'.on_attach()]])

require('colorizer').setup{}


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

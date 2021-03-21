" Telescope bindings

" find project files 
nnoremap <leader>f :Telescope find_files<cr>

" search files from cwd
nnoremap <leader>c :Telescope find_files cwd=%:h<cr>

" search buffers
nnoremap <leader>b :Telescope buffers<cr>

" show and search document errors
nnoremap <leader>e :Telescope lsp_document_diagnostics<cr>

" show and search workspace errors (this seems to be all open buffers)
nnoremap <leader>E :Telescope lsp_workspace_diagnostics<cr>

" Live grep
nnoremap <leader>g :Telescope live_grep<cr>

" search old files
nnoremap <leader>h :Telescope oldfiles<cr>

" show document symbols from LSP
nnoremap <leader>o :Telescope lsp_document_symbols<cr>

" show document symbols/outline from treesitter
nnoremap <leader>t :Telescope treesitter<cr>

" Language Server Bindings

" goto local buffer declaration
nnoremap gD <cmd>lua vim.lsp.buf.declaration()<cr>

" goto global definition
nnoremap gd <cmd>lua vim.lsp.buf.definition()<cr>

" goto global implementation
nnoremap gi <cmd>lua vim.lsp.buf.implementation()<cr>

" search for references
nnoremap gr <cmd>lua vim.lsp.buf.references()<cr>

" show documentation
nnoremap <silent>K <cmd>lua vim.lsp.buf.hover()<cr>

" Other Bindings

" Run tabular on visual selection
vnoremap <leader>a :Tab /

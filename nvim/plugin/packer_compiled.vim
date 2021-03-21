" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/mmyers/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/mmyers/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/mmyers/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/mmyers/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/mmyers/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["completion-buffers"] = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/completion-buffers"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  edge = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/edge"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  tabular = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["twig.vim"] = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/twig.vim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-strip-trailing-whitespace"] = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/vim-strip-trailing-whitespace"
  },
  vimwiki = {
    loaded = true,
    path = "/home/mmyers/.local/share/nvim/site/pack/packer/start/vimwiki"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry

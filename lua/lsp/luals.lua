local lspconfig = require('lspconfig')
local util = require('lspconfig/util')

lspconfig.lua_ls.setup({
  cmd = {'lua-language-server'},
  filetypes = {'lua'},
  root_dir = function(fname)
    return util.root_pattern('.luarc.json', '.luarc.jsonc', '.git')(fname) or
      util.path.dirname(fname)
  end,
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = {'vim'} },
      workspace = { library = vim.api.nvim_get_runtime_file("", true) },
      telemetry = { enable = false }
    }
  }
})

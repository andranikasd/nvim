local ok, mason = pcall(require, 'mason')
if not ok then return end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

require('mason-lspconfig').setup({
  ensure_installed = {
    "lua_ls",
    "gopls",
    "pyright",
    "clangd",
    "terraformls",
    "yamlls",
    "bashls",
    "ansiblels"
  },
  automatic_installation = true,
})

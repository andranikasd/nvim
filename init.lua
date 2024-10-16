require('bases.settings')
require('bases.mappings')
require('config.lazy')
-- Checking for compatible version
if vim.fn.has('nvim-0.8') == 0 then
  error('Need Neovim 0.8+ in order to use this config')
end

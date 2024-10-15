-- Checking for compatible version
if vim.fn.has('nvim-0.8') == 0 then
    error('Need Neovim 0.8+ in order to use this config')
end

vim.opt.termguicolors = true -- enable 24-bit RGB colors
-- Disable annoying deprecated message
vim.deprecate = function() end

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
        { "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
            lazypath })
end
vim.opt.rtp:prepend(lazypath)


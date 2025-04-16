-- ============================================================
-- INSTALLATION GUIDE UPDATE FOR NEOVIM
-- ============================================================
-- 1. Install Neovim and dependencies:
--    sudo apt update && sudo apt install neovim curl
-- 2. Install vim-plug for Neovim:
--    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
--    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
-- 3. Rest of the installation steps remain the same as Vim setup

-- ------------------------------------------------------------
-- 1. CORE SETTINGS
-- ------------------------------------------------------------
vim.g.mapleader = " "         -- Set leader to space
vim.opt.number = true         -- Show line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.tabstop = 2           -- Spaces per tab
vim.opt.shiftwidth = 2        -- Indentation width
vim.opt.expandtab = true      -- Convert tabs to spaces
vim.opt.hidden = true         -- Allow background buffers
vim.opt.splitright = true     -- Vertical splits open right
vim.opt.splitbelow = true     -- Horizontal splits open below
vim.opt.cursorline = true     -- Cursore current line highlight

-- Enable filetype detection
vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')

-- ------------------------------------------------------------
-- 2. ENHANCED CLIPBOARD CONFIGURATION (WSL)
-- ------------------------------------------------------------
-- local function setup_wsl_clipboard()
--   local win32yank_path = "/mnt/c/tools/win32yank.exe"
-- 
--   -- Validate win32yank existence
--   if vim.fn.executable(win32yank_path) ~= 1 then
--     vim.notify("win32yank not found at: " .. win32yank_path, vim.log.levels.WARN)
-- 
--     return
--   end
-- 
--   -- Configure system clipboard
--   vim.g.clipboard = {
--     name = "WslClipboard",
--     copy = {
--       ["+"] = win32yank_path .. " -i --crlf",
--       ["*"] = win32yank_path .. " -i --crlf",
--     },
--     paste = {
--       ["+"] = win32yank_path .. " -o --lf",
--       ["*"] = win32yank_path .. " -o --lf",
--     },
--     cache_enabled = 0,
--   }
-- 
--   -- Custom yank mappings
--   local yank_cmd = win32yank_path .. " -i --crlf"
-- 
--   -- Visual mode yank to Windows clipboard
--   vim.keymap.set("v", "<leader>y", function()
--     vim.cmd(string.format("'<,'>w !%s", yank_cmd))
--   end, { desc = "Yank selection to Windows clipboard" })
-- 
--   -- Normal mode yank line to Windows clipboard
--   vim.keymap.set("n", "<leader>Y", function()
--     vim.cmd(string.format(".w !%s", yank_cmd))
--   end, { desc = "Yank line to Windows clipboard" })
-- end

-- Only configure for WSL
-- if vim.fn.has("wsl") == 1 then
--   setup_wsl_clipboard()
-- end
-- ------------------------------------------------------------
-- 3. KEYBINDINGS
-- ------------------------------------------------------------
local keymap = vim.keymap.set

-- Insert mode escape
keymap('i', 'jk', '<Esc>')
keymap('i', 'kj', '<Esc>')

-- Window navigation
local opts = { noremap = true }
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Terminal navigation
keymap('t', '<C-h>', [[<C-\><C-n><C-w>h]], opts)
keymap('t', '<C-j>', [[<C-\><C-n><C-w>j]], opts)
keymap('t', '<C-k>', [[<C-\><C-n><C-w>k]], opts)
keymap('t', '<C-l>', [[<C-\><C-n><C-w>l]], opts)

-- Terminal management
keymap('n', '<leader>tt', ':terminal<CR>', opts)
keymap('t', '<Esc>', [[<C-\><C-n>]], opts)

-- Tab management
keymap('n', '<leader>tn', ':tabnew<CR>', opts)
keymap('n', '<leader>tc', ':tabclose<CR>', opts)
keymap('n', '<C-Left>', ':tabprevious<CR>', opts)
keymap('n', '<C-Right>', ':tabnext<CR>', opts)

-- Split management
keymap('n', '<leader>sh', ':split<CR>', opts)
keymap('n', '<leader>sv', ':vsplit<CR>', opts)
keymap('n', '<leader>=', ':resize +5<CR>', opts)
keymap('n', '<leader>-', ':resize -5<CR>', opts)
keymap('n', '<leader>>', ':vertical resize +5<CR>', opts)
keymap('n', '<leader><', ':vertical resize -5<CR>', opts)

-- Some env setup
vim.env.PATH = vim.env.PATH .. ':' .. vim.fn.stdpath('data') .. '/mason/bin'

local palettes = {
  github_dark_default = {
    bg1 = '#000000',  -- Black background
    bg0 = '#1d1d2b',  -- Alt backgrounds (floats, statusline, ...)
    bg3 = '#121820',  -- 55% darkened from stock
    sel0 = '#131b24', -- 55% darkened from stock
  },
}
local specs = {
  all = {
    inactive = 'bg0', -- Default value for other styles
  },
  github_dark_default = {
    inactive = '#090909', -- Slightly lighter then black background
  },
}

local groups = {
  all = {
    NormalNC = { fg = 'fg1', bg = 'inactive' }, -- Non-current windows
  },
}

return {
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('github-theme').setup({
      palettes = {},
      specs = {},
      groups = {},
    })

    vim.cmd('colorscheme github_dark_high_contrast')
  end,
}

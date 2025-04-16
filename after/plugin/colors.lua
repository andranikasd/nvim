-- Options Overwrite
require("gruber-darker").setup({
  bold = true,
  invert = {
    signs = false,
    tabline = false,
    visual = false,
  },
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = false,
  },
  undercurl = true,
  underline = false,
  }
)

vim.cmd("colorscheme gruber-darker")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)
vim.keymap.set("i", "leader>jk", vim.cmd.Ex)

-- General LSP keymaps
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, { desc = 'Rename symbol' })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = 'Format buffer' })
vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, { desc = 'Code actions' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float, { desc = 'Show diagnostics' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })

-- Completion keymaps
vim.keymap.set('i', '<Tab>', function()
  return vim.fn.pumvisible() == 1 and '<C-n>' or '<Tab>'
end, { expr = true })
vim.keymap.set('i', '<S-Tab>', function()
  return vim.fn.pumvisible() == 1 and '<C-p>' or '<S-Tab>'
end, { expr = true })

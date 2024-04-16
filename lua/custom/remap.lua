vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = '[P]roject [V]iew' })
vim.keymap.set('n', '<C-s>', vim.cmd.w, { desc = 'Save' })

vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { desc = 'Signature Documentation' })

-- Disable annoying behavior
vim.keymap.set('n', 'J', '<nop>')
vim.keymap.set('n', 'K', '<nop>')

-- Move up/down in view mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Center cursor when moving
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Sets mappings to delete text to black hole register.
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

-- Sets a mapping to exit insert mode with Ctrl-c.
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Sets a mapping to replace all occurrences of a word in the file.
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Replace all occurences of a word' })

-- Sets a mapping to make the current file executable.
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true, desc = 'Make current file executable' })

-- TODO: Find good mapping for this
-- Sets a mapping to format code using LSP.
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- TODO: Find good mapping for this
-- Sets mappings for navigating the quickfix and location lists.
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- TODO: wat dis do
-- Sets a visual mode mapping to paste over selected text.
-- vim.keymap.set("x", "<leader>p", [["_dP]])

-- TODO: wat dis do
-- Sets a mapping to do nothing for Q (to prevent accidental usage).
-- vim.keymap.set("n", "Q", "<nop>")

-- TODO: wat dis do
-- Sets a mapping to open tmux-sessionizer in a new tmux window.
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

return {}

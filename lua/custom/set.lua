-- Configures the GUI cursor style.
vim.opt.guicursor = ''

-- Enables line numbers for better navigation.
vim.opt.nu = true
-- Displays relative line numbers to provide context.
vim.opt.relativenumber = true

-- Sets the number of spaces per tab.
vim.opt.tabstop = 4
-- Sets the number of spaces inserted for a tab.
vim.opt.softtabstop = 4
-- Sets the number of spaces for autoindent.
vim.opt.shiftwidth = 4
-- Converts tabs to spaces for consistent indentation.
vim.opt.expandtab = true

-- Enables smart indentation for improved code formatting.
vim.opt.smartindent = true

-- Disables line wrapping for easier code readability.
vim.opt.wrap = false

-- Disables swap file creation to avoid clutter.
vim.opt.swapfile = false
-- Disables backup file creation to avoid redundancy.
vim.opt.backup = false
-- Sets the directory for undo files to ensure persistence.
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
-- Enables persistent undo for easy reverting of changes.
vim.opt.undofile = true

-- Enables incremental search for faster navigation.
vim.opt.incsearch = true

-- Enables true color support in the terminal for richer colors.
vim.opt.termguicolors = true

-- Sets the number of lines to keep above/below the cursor for context.
vim.opt.scrolloff = 15
-- Enables the sign column for displaying signs.
vim.opt.signcolumn = 'yes'
-- Appends characters to the list of filename characters for better file recognition.
vim.opt.isfname:append '@-@'

-- Sets the interval for writing swap files and updating the UI for efficiency.
vim.opt.updatetime = 50

-- Sets a vertical line at column 80 for better code readability.
vim.opt.colorcolumn = '80'

-- python
vim.g.python3_host_prog = '/home/nyxenn/.pyenv/versions/3.12.2/bin/python3'

return {}

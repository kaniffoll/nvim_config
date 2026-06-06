-- show absolute line numbers
vim.opt.nu = true

-- show relative line numbers
vim.opt.relativenumber = true

-- number of spaces a tab character represents
vim.opt.tabstop = 4

-- number of spaces inserted when pressing Tab
vim.opt.softtabstop = 4

-- number of spaces used for each indentation level
vim.opt.shiftwidth = 4

-- convert tabs to spaces
vim.opt.expandtab = true

-- automatically indent new lines
vim.opt.smartindent = true

-- disable line wrapping
vim.opt.wrap = false

-- do not highlight previous search matches after search is finished
vim.opt.hlsearch = false

-- show search matches while typing the search pattern
vim.opt.incsearch = true

-- enable true color support in the terminal
vim.opt.termguicolors = true

-- keep at least 8 lines visible above and below the cursor
vim.opt.scrolloff = 8

-- always show the sign column (used by Git, LSP diagnostics, etc.)
vim.opt.signcolumn = "yes"

-- treat '@' and '-' as part of filenames when navigating paths
vim.opt.isfname:append("@-@")

-- highlight the 80-character column as a coding guideline
vim.opt.colorcolumn = "80"

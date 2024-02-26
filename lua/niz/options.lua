local set = vim.opt
local g = vim.g

-- Netrw banner
-- 0 : Disable banner
-- 1 : Enable banner
g.netrw_banner = 0
-- Keep the current directory and the browsing directory synced.
-- This helps you avoid the move files error.
g.netrw_keepdir = 0
-- Human-readable files sizes
g.netrw_sizestyle = "H"
-- Netrw list style
-- 0 : thin listing (one file per line)
-- 1 : long listing (one file per line with timestamp information and file size)
-- 2 : wide listing (multiple files in columns)
-- 3 : tree style listing
g.netrw_liststyle = 1
g.netrw_winsize = 25
-- Patterns for hiding files, e.g. node_modules
-- NOTE: this works by reading '.gitignore' file
g.netrw_list_hide = vim.fn["netrw_gitignore#Hide"]()
-- Open files in split
-- 0 : re-use the same window (default)
-- 1 : horizontally splitting the window first
-- 2 : vertically   splitting the window first
-- 3 : open file in new tab
-- 4 : act like "P" (ie. open previous window)
g.netrw_browse_split = 0

-- Cursor highlighting
set.cursorline = true
--set.cursorcolumn = true
-- Pane splitting
set.splitright = true
set.splitbelow = true
-- Searching
set.smartcase = true
set.ignorecase = true
-- Make terminal support truecolor
set.termguicolors = true
-- Make neovim use the system clipboard
set.clipboard = 'unnamedplus'
-- Disable old vim status
set.showmode = false
-- Set relative line numbers
set.number = true
set.nu = true
set.relativenumber = true
set.numberwidth = 2
-- Tab config
set.expandtab = true
set.smartindent = true
set.shiftwidth = 2
set.tabstop = 2
set.shiftround = true
-- Code folding
set.foldlevel = 99
set.foldlevelstart = 99
set.foldcolumn = '1'
-- Decrease update time
set.updatetime = 200
-- Disable swapfile
set.swapfile = false
-- Enable persistent undo
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true
-- Always show tabline
--set.showtabline = 0
-- Disable mouse support
-- set.mouse = ''
-- Scrolloff
set.scrolloff = 5
set.sidescrolloff = 5
-- Disable wrapping
set.wrap = false
-- Show invisible characters
set.list = true
-- Fill chars
set.fillchars = { eob = ' ', diff = '╱', fold = ' ', foldsep = ' ', foldopen = '', foldclose = '' }
-- Enable autowrite
set.autowrite = true
-- Maximum number of undo changes
set.undolevels = 10000
-- Only display 20 items in a completion menu
set.pumheight = 20
-- Disable lsp logging
vim.lsp.set_log_level('OFF')
-- Disable provider warnings in the healthcheck
g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_python3_provider = 0
-- Always show the signcolumn
set.signcolumn = "yes"

set.backup = false
set.hlsearch = false
set.incsearch = true
set.isfname:append "@-@"

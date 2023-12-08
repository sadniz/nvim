local set = vim.opt

set.backup = false
--set.colorcolumn = "80"
set.expandtab = true
set.nu = true
set.relativenumber = true

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

set.smartindent = true

set.wrap = false

set.swapfile = false
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

set.hlsearch = false
set.incsearch = true

set.termguicolors = true

set.scrolloff = 8
set.signcolumn = "yes"
set.isfname:append "@-@"

set.mapleader = " "

--set.updatetime = 50
--set.background = 'dark'

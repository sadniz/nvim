local opts = { noremap = true, silent = true }
local keymap = vim.keymap
local global = vim.g
-- Defines the leader
global.mapleader = " "
global.maplocalleader = " "
-- Disable space since I'm using it as my leader key
keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { expr = true, silent = true })
-- Select entire file with CTRL + A
keymap.set('n', '<C-a>', 'ggVG', opts)
-- Go to previous explorer
keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Move selected line up/down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Jump up/down keeping the cursor in the middle
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
-- Searching forwards/backwards keeping the cursor in the middle
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
-- After pasting keep the pasted value
keymap.set("x", "<leader>p", "\"_dP")
-- Yanks the value to the system clipboard (asbjornHaland)
--keymap.set("v", "<leader>y", "\"+y")
keymap.set({ "n", "v", "x" }, "<leader>y", "\"+y")
keymap.set("n", "<leader>Y", "\"+y")
-- Deletes the value similar as above
keymap.set({ "n", 'v' }, "<leader>d", "\"_d")
--keymap.set("v", "<leader>d", "\"_d")
-- Making <C-c> behave like <Esc>
keymap.set("i", "<C-c>", "<Esc>")
-- Stopping the 'Q'
keymap.set("n", "Q", "<nop>")
-- Format the buffer (?)
keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)
-- Replace the word (ThePrimeagen)
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- Create an executable of the file
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
-- Shoutout the file
keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
-- Fix navigation
keymap.set("n", "<Up>", "gk")
keymap.set("n", "k", "v:count ? 'k' : 'gk'", { noremap = true, expr = true })
keymap.set("n", "j", "v:count ? 'j' : 'gj'", { noremap = true, expr = true })
keymap.set("n", "<Down>", "gj")
-- Tmux
keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
keymap.set("n", "<C-j>", "<cmd> TmuxNavigateRight<CR>")
keymap.set("n", "<C-k>", "<cmd> TmuxNavigateDown<CR>")
keymap.set("n", "<C-l>", "<cmd> TmuxNavigateUp<CR>")
-- Tmux new session (ThePrimeagen)
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- Resize splits with arrow keys
keymap.set('n', '<C-Up>', '<cmd>resize +2<CR>', { desc = 'Increase window height' })
keymap.set('n', '<C-Down>', '<cmd>resize -2<CR>', { desc = 'Decrease window height' })
keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<CR>', { desc = 'Decrease window width' })
keymap.set('n', '<C-Right>', '<cmd>vertical resize +2<CR>', { desc = 'Increase window width' })
-- Lazy keymap
keymap.set('n', '<leader>l', '<cmd>Lazy<CR>', { desc = 'Open lazy.nvim' })
-- Better indenting
keymap.set('v', '<', '<gv')
keymap.set('v', '>', '>gv')

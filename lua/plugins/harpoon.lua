return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon"):setup()
    require("harpoon"):extend({
      UI_CREATE = function(cx)
        vim.keymap.set("n", "<C-v>", function()
          require("harpoon").ui:select_menu_item({ vsplit = true })
        end, { buffer = cx.bufnr })

        vim.keymap.set("n", "<C-x>", function()
          require("harpoon").ui:select_menu_item({ split = true })
        end, { buffer = cx.bufnr })

        vim.keymap.set("n", "<C-t>", function()
          require("harpoon").ui:select_menu_item({ tabedit = true })
        end, { buffer = cx.bufnr })
      end,
    })
  end,
  settings = {
    tabline = true,
  },
  keys = {
    { "<leader>a", function() require("harpoon"):list():append() end,  desc = "harpoon file", },
    {
      "<C-e>",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "harpoon quick menu",
    },
    { "<leader>1", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
    { "<leader>2", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
    { "<leader>3", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
    { "<leader>4", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
    { "<leader>5", function() require("harpoon"):list():select(5) end, desc = "harpoon to file 5", },
    { "<leader>6", function() require("harpoon"):list():select(6) end, desc = "harpoon to file 6", },
    { "<leader>7", function() require("harpoon"):list():select(7) end, desc = "harpoon to file 7", },
    { "<leader>8", function() require("harpoon"):list():select(8) end, desc = "harpoon to file 8", },
    { "<leader>9", function() require("harpoon"):list():select(9) end, desc = "harpoon to file 9", },
  },
}
-- return {
--   "theprimeagen/harpoon",
--   branch = "harpoon2",
--   dependencies = { "nvim-lua/plenary.nvim" },
--   config = function()
--     ---@diagnostic disable-next-line: missing-parameter
--     require("harpoon"):setup()
--   end,
--   keys = {
--     { "<leader>a", function() require("harpoon"):list():append() end,  desc = "harpoon file", },
--     {
--       "<leader>e",
--       function()
--         local harpoon = require("harpoon")
--         harpoon.ui:toggle_quick_menu(harpoon:list())
--       end,
--       desc = "harpoon quick menu",
--     },
--     { "<leader>1", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
--     { "<leader>2", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
--     { "<leader>3", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
--     { "<leader>4", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
--     { "<leader>5", function() require("harpoon"):list():select(5) end, desc = "harpoon to file 5", },
--     { "<leader>6", function() require("harpoon"):list():select(6) end, desc = "harpoon to file 6", },
--     { "<leader>7", function() require("harpoon"):list():select(7) end, desc = "harpoon to file 7", },
--     { "<leader>8", function() require("harpoon"):list():select(8) end, desc = "harpoon to file 8", },
--     { "<leader>9", function() require("harpoon"):list():select(9) end, desc = "harpoon to file 9", },
--   }
-- }
--
-- -- return {
-- --   'ThePrimeagen/harpoon',
-- --   branch = "harpoon2",
-- --   dependencies = { "nvim-lua/plenary.nvim" },
-- --   config = function()
-- --     local harpoon_status_ok, harpoon = pcall(require, 'harpoon')
-- --     if not harpoon_status_ok then
-- --       return
-- --     end
-- --
-- --     local harpoon_mark_status_ok, harpoon_mark = pcall(require, 'harpoon.mark')
-- --     if not harpoon_mark_status_ok then
-- --       return
-- --     end
-- --
-- --     local harpoon_ui_status_ok, harpoon_ui = pcall(require, 'harpoon.ui')
-- --     if not harpoon_ui_status_ok then
-- --       return
-- --     end
-- --
-- --     local opts = { noremap = true, silent = true }
-- --     local keymap = vim.keymap
-- --
-- --     harpoon.setup({})
-- --
-- --     keymap.set('n', '<leader>a', harpoon_mark.add_file, opts)
-- --     keymap.set('n', '<C-e>', harpoon_ui.toggle_quick_menu, opts)
-- --
-- --     keymap.set('n', '<leader>1', function() harpoon_ui.nav_file(1) end, opts)
-- --     keymap.set('n', '<leader>2', function() harpoon_ui.nav_file(2) end, opts)
-- --     keymap.set('n', '<leader>3', function() harpoon_ui.nav_file(3) end, opts)
-- --     keymap.set('n', '<leader>4', function() harpoon_ui.nav_file(4) end, opts)
-- --     keymap.set('n', '<leader>5', function() harpoon_ui.nav_file(5) end, opts)
-- --     keymap.set('n', '<leader>6', function() harpoon_ui.nav_file(6) end, opts)
-- --     keymap.set('n', '<leader>7', function() harpoon_ui.nav_file(7) end, opts)
-- --     keymap.set('n', '<leader>8', function() harpoon_ui.nav_file(8) end, opts)
-- --     keymap.set('n', '<leader>9', function() harpoon_ui.nav_file(9) end, opts)
-- --     --return true
-- --   end
-- -- }

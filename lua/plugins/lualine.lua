-- lualine.nvim
return {
  'nvim-lualine/lualine.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('lualine').setup({
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    })
  end
  --   theme = 'auto',
  --   component_separators = { left = '', right = '' },
  --   section_separators = { left = '', right = '' },
  --   disabled_filetypes = {
  --     'dashboard',
  --     'NeogitStatus',
  --     'NeogitCommitView',
  --     'NeogitPopup',
  --     'NeogitConsole',
  --   },
  -- },
  -- sections = {
  --   lualine_a = { 'mode' },
  --   lualine_b = {
  --     'branch',
  --     'diff',
  --     { 'diagnostics', sources = { 'nvim_lsp', 'nvim_diagnostic' } },
  --     {
  --       function()
  --         local ok, m = pcall(require, 'better_escape')
  --         return ok and m.waiting and '✺' or ''
  --       end,
  --     },
  --   },
  --   lualine_c = {
  --     'filename',
  --     {
  --       function()
  --         return require('nvim-navic').get_location()
  --       end,
  --       cond = function()
  --         return package.loaded['nvim-navic'] and require('nvim-navic').is_available()
  --       end,
  --       color_correction = 'static',
  --     },
  --   },
  --   lualine_x = {
  --     'fileformat',
  --     {
  --       'filetype',
  --       icon_only = true,
  --       separator = '',
  --       padding = { left = 1, right = 1 },
  --     },
  --     {
  --       function()
  --         return require('dap').status()
  --       end,
  --       cond = function()
  --         return package.loaded['dap'] and require('dap').status() ~= ''
  --       end,
  --     },
  --   },
  --   lualine_y = { 'progress' },
  --   lualine_z = { 'location' },
  -- },
  -- extensions = {
  --   'man',
  --   'quickfix',
  --   'mason',
  --   'toggleterm',
  --   'neo-tree',
  --   'trouble',
  --   'lazy',
  --   'nvim-dap-ui',
  -- },
}

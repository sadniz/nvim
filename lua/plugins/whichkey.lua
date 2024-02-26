return {
  'folke/which-key.nvim',
  keys = { '<leader>', '"', "'", '`', 'c', 'y', 'd', 'z', 'g', '[', ']' },
  opts = {
    operators = { gc = 'Comments', gb = 'Block comments' },
    defaults = {
      mode = { 'n', 'v' },
      ['g'] = { name = '+goto' },
      ['gc'] = { name = '+comments' },
      ['gb'] = { name = '+block comments' },
      ['gz'] = { name = '+surrounds' },
      [']'] = { name = '+next' },
      ['['] = { name = '+prev' },
      ['<leader>q'] = { name = '+quit/session' },
      ['<leader>f'] = { name = '+find' },
      ['<leader>b'] = { name = '+buffers' },
      ['<leader>g'] = { name = '+git' },
      ['<leader>x'] = { name = '+diagnostics/quickfix' },
      ['<leader>d'] = { name = '+debugger' },
    },
  },
  config = function(_, opts)
    local wk = require('which-key')
    wk.setup(opts)
    wk.register(opts.defaults)
  end,
}

return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup {
      options = {
        hover = {
          enabled = true,
          delay = 150,
          reveal = { 'close' }
        }
      }
    }
  end
}

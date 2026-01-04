return {
  'utilyre/barbecue.nvim',
  name = 'barbecue',
  version = '*',
  dependencies = {
    'SmiteshP/nvim-navic',
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    theme = 'auto',
    show_dirname = true,
    show_basename = true,
    show_modified = true,
    exclude_filetypes = { 'netrw', 'toggleterm', 'neo-tree' },
  },
}

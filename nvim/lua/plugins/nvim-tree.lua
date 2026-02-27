return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- For icons in the tree
  },
  config = function()
    require('nvim-tree').setup {}
  end,
}

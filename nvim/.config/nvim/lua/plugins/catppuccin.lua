return {
  "catppuccin/nvim",
  lazy = false, -- IMPORTANT: Ensures the theme loads immediately
  name = "catppuccin",
  priority = 1000,
  config = function()
    -- You can choose from 'catppuccin-latte', 'catppuccin-frappe', 'catppuccin-macchiato', 'catppuccin-mocha'
    vim.cmd.colorscheme 'catppuccin-mocha'
  end,
}

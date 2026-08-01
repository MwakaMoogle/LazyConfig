return {
  "nyngwang/nvimgelion",
  lazy = false,    -- Load immediately on startup
  priority = 1000, -- Load before other plugins
  config = function()
    -- This command actually activates the theme
    vim.cmd([[colorscheme nvimgelion]])
  end
}

return {
  "xiyaowong/transparent.nvim",
  lazy = false, -- We want this to load immediately on startup so there is no background flash
  config = function()
    require("transparent").setup({
      -- These are default groups that will be cleared (made transparent)
      groups = {
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLineNr', 'EndOfBuffer',
      },
      -- This clears the background of specific plugins (like neo-tree and telescope)
      extra_groups = {
        "NormalFloat",     -- Makes floating windows transparent
        "NeoTreeNormal",   -- Makes the neo-tree background transparent
        "NeoTreeNormalNC",
        "TelescopeNormal", -- Makes Telescope background transparent
        "TelescopeBorder",
      },
      exclude_groups = {}, -- Leave this empty unless you want certain things to stay solid
    })
  vim.cmd("TransparentEnable")
  end
}

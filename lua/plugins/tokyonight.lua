return {
  "nyngwang/nvimgelion",
  lazy = false,
  priority = 1000,
  -- Only load this plugin if the operating system is macOS
  cond = function()
    return (vim.uv or vim.loop).os_uname().sysname == "Darwin"
  end,
  config = function()
    vim.cmd([[colorscheme nvimgelion]])
  end
}

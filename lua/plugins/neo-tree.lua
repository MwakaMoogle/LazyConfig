return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- Adds pretty file icons
    "MunifTanjim/nui.nvim",        -- A UI library neo-tree uses
  },
  -- This makes sure the plugin only loads when you actually use it
  cmd = "Neotree",
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle File Explorer" },
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true, -- Closes Neovim if neo-tree is the last window open
      window = {
        width = 30,
        position = "left",
      },
      filesystem = {
        follow_current_file = {
          enabled = true, -- Automatically focuses the file you are currently editing
        },
      }
    })
  end,
}

return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { 
    "nvim-lua/plenary.nvim" 
  },
  keys = {
    -- Here is where your Leader Key (Space) gets used!
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep (Search text)" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Open Buffers" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
  },
}

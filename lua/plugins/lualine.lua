return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        -- 'auto' tells Lualine to automatically match your Nvimgelion colorscheme
        theme = "auto", 
        
        -- 'globalstatus' makes it so you only have ONE status bar at the very bottom of the app, 
        -- even if you have multiple files open side-by-side. (Highly recommended!)
        globalstatus = true, 
        
        -- These define the shapes of the separators between sections. 
        -- You can change these to arrows like '' and '' if your terminal font supports them!
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '', right = ''},
      },
      sections = {
        lualine_a = {'mode'},                  -- Shows NORMAL, INSERT, or VISUAL
        lualine_b = {'branch', 'diff', 'diagnostics'}, -- Shows Git branch and code errors
        lualine_c = {'filename'},              -- Shows the file you are editing
        lualine_x = {'encoding', 'fileformat', 'filetype'}, -- Shows file info and icons
        lualine_y = {'progress'},              -- Shows how far down the file you are (%)
        lualine_z = {'location'}               -- Shows exact line and column number
      },
    })
  end
}

return {
  -- 1. Mason
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- 2. Mason LSP Config
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { 
          "gopls",         
          "lua_ls",        
          "pyright",       
          "clangd",        
          "rust_analyzer", 
          "jdtls",         
          "ts_ls",         
          "html",          
          "cssls",
          "erlangls",      -- <-- ADDED ERLANG HERE
        }, 
      })
    end,
  },

  -- 3. LSP Config
  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- ADDED "erlangls" to this list as well
      local servers = { 
        "gopls", "lua_ls", "pyright", "clangd", 
        "rust_analyzer", "jdtls", "ts_ls", "html", "cssls", "erlangls" 
      }

      for _, server in ipairs(servers) do
        vim.lsp.config(server, { capabilities = capabilities })
        vim.lsp.enable(server)
      end
    end,
  },

  -- 4. Autocompletion Engine
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "L3MON4D3/LuaSnip",             
      "saadparwaiz1/cmp_luasnip",  
      "rafamadriz/friendly-snippets", 
    },
    config = function()
      local cmp = require("cmp")
      
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(), 
          ['<CR>'] = cmp.mapping.confirm({ select = true }), 
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' }, 
          { name = 'luasnip' },  
        })
      })
    end,
  },
}

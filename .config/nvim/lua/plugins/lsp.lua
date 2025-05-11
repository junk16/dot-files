return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "williamboman/mason.nvim", config = true },
      { "williamboman/mason-lspconfig.nvim" },
      { "mfussenegger/nvim-jdtls", ft = "java" },
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
      ensure_installed = { "solargraph",
                           "phpactor",
                           "pyright",
                           "lua_ls",
                           "clangd",
                           "perlnavigator",
                           "sqls",
                           "marksman",
                           "jsonls",
                           "dockerls",
                           "yamlls",
                         },
        automatic_installation = true,
      })

      require("plugins.lsp.java")
      -- Include solargraph setup
      require("plugins.lsp.solargraph")
      require("plugins.lsp.go")
      require("plugins.lsp.php")
      require("plugins.lsp.python")
      require("plugins.lsp.lua")
      require("plugins.lsp.clang")
      require("plugins.lsp.perl")
      require("plugins.lsp.sql")
      require("plugins.lsp.markdown")
      require("plugins.lsp.json")
      require("plugins.lsp.docker")
      require("plugins.lsp.yaml")
    end,
  },
}

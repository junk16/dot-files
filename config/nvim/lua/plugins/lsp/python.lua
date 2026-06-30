local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",  -- or "strict"
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
})


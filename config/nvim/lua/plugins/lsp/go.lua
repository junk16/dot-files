local lspconfig = require("lspconfig")

lspconfig.gopls.setup({
  settings = {
    gopls = {
      usePlaceholders = true,
      completeUnimported = true,
      analyses = {
        unusedparams = true,
        unreachable = true,
      },
    },
  },
})


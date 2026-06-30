local lspconfig = require('lspconfig')

lspconfig.marksman.setup({
  -- You can add custom configurations here if needed
  settings = {
    marksman = {
      -- Configure markdown linting, etc.
    }
  }
})

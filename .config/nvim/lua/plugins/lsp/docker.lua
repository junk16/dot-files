local lspconfig = require('lspconfig')

lspconfig.dockerls.setup({
  -- Any custom settings you might want to define, for example:
  filetypes = { "dockerfile" },
  root_dir = lspconfig.util.root_pattern("Dockerfile", ".git"),  -- Finds the root directory by looking for Dockerfile or git repo
})

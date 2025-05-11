local lspconfig = require("lspconfig")

lspconfig.phpactor.setup({
  init_options = {
    ["language_server_phpstan.enabled"] = true,
    ["language_server_psalm.enabled"] = false,
  },
})

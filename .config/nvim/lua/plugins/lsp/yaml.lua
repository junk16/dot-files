local lspconfig = require("lspconfig")
-- local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.yamlls.setup({
  -- capabilities = capabilities,
  settings = {
    yaml = {
      validate = true,
      hover = true,
      completion = true,
      schemaStore = {
        enable = false,
        url = "",
      },
      schemas = {
        ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/refs/heads/master/master/all.json"] = {
          "**/k8s*.yaml",
          "**/*.k8s.yaml",
          "**/kubernetes*.yaml",
          "**/deployment.yaml",
          "**/service.yaml",
        },
      },
    },
  },
  flags = {
    debounce_text_changes = 150,
  },
  on_attach = function(client)
    client.config.flags = client.config.flags or {}
    client.config.flags.allow_incremental_sync = true

    -- Enable trace-level logging
    client.config.trace = "verbose"
    vim.notify("[yamlls] Logging enabled (trace: verbose)", vim.log.levels.INFO)
  end,
})

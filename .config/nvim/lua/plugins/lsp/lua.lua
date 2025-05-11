local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT", -- Neovim uses LuaJIT
      },
      diagnostics = {
        globals = { "vim" }, -- Avoid "undefined global 'vim'"
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false, -- avoids prompt
      },
      telemetry = { enable = false },
    },
  },
})



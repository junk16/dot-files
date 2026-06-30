local lspconfig = require("lspconfig")

lspconfig.clangd.setup({
  cmd = { "clangd" }, -- optional if clangd is in PATH
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = require("lspconfig").util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
})

local plugin_files = vim.fn.globpath(vim.fn.stdpath("config") .. "/lua/config/plugins", "*.lua", false, true)

for _, file in ipairs(plugin_files) do
  local modname = file:match(".*/lua/(.*)%.lua$"):gsub("/", ".")
  require(modname)
end

-- lua/config/init.lua
-- vim.lsp.set_log_level("debug")
--
-- -- Load all files from the lua/config/init directory
-- for _, file in ipairs(vim.fn.globpath(vim.o.runtimepath, "lua/config/**/*.lua", true, true)) do
--   vim.cmd("source " .. file)
-- end
--
--
-- require('config.lazy')
-- require('plugins.nvim-cmp')
-- -- Map and execute all plugin config files in the lua/config/plugin directory
-- local plugin_files = vim.fn.globpath(vim.o.runtimepath, "lua/config/plugin/*.lua", true, true)
-- table.sort(plugin_files)
--
-- for _, plugin_file in ipairs(plugin_files) do
--   vim.cmd("source " .. plugin_file)
-- end
--

require("config.lazy")
-- require("config.general")
-- require("config.indent")
-- require("config.mapping")
-- require("config.ctags")
-- require("config.autoload_plugins")
-- require("plugins.nvim-cmp")

vim.g.lazyvim_icons = true
vim.opt.tags:append({ ".git/tags", "tags", "~/.cache/nvim/scnvim/tags" })

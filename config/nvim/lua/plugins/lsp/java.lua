-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "java",
--   callback = function()
--     local jdtls_path = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
--     local config = {
--       cmd = { jdtls_path .. "/bin/jdtls" },
--       root_dir = require("lspconfig").util.root_pattern(".git", "mvnw", "gradlew"),
--     }
--     require("jdtls").start_or_attach(config)
--   end,
-- })
-- 

vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    local jdtls = require("jdtls")
    local home = os.getenv("HOME")
    local mason_path = vim.fn.stdpath("data") .. "/mason"
    local jdtls_bin = mason_path .. "/bin/jdtls"
    local root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" })
    local workspace_dir = home .. "/.local/share/eclipse/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

    jdtls.start_or_attach({
      cmd = { jdtls_bin },
      root_dir = root_dir,
      workspace_folder = workspace_dir,
    })
  end,
})


-- lua/config/indent.lua

local opt = vim.opt

-- General indentation settings
opt.autoindent = true
opt.smartindent = true
opt.cindent = true
opt.smarttab = true
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 0

-- Filetype specific indentation
vim.api.nvim_create_autocmd("FileType", {
  pattern = "c,java,html,ruby,js,zsh,python,scala,json,css,scss,sass,javascript",
  callback = function()
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 4
    vim.bo.tabstop = 4
    vim.bo.expandtab = true
  end
})

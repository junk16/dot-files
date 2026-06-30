-- lua/config/general.lua

-- ============================
-- Colorscheme and Highlighting
-- ============================

-- Set colorscheme
vim.cmd("colorscheme tokyonight-night")

-- Highlight Zenkaku Space (full-width space)
local function zenkaku_space()
  vim.cmd("highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta")
end

-- Autogroup for ZenkakuSpace
vim.api.nvim_create_augroup("ZenkakuSpace", { clear = true })

-- Reapply on color scheme change and startup
vim.api.nvim_create_autocmd("ColorScheme", {
  group = "ZenkakuSpace",
  callback = zenkaku_space,
})
vim.api.nvim_create_autocmd({ "VimEnter", "WinEnter" }, {
  group = "ZenkakuSpace",
  pattern = "*",
  command = "match ZenkakuSpace /　/",
})
zenkaku_space()

-- ====================
-- General Configuration
-- ====================

local opt = vim.opt
local g = vim.g
local api = vim.api

-- Global encoding
vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    if vim.bo.modifiable then
      vim.bo.fileencoding = "utf-8"
    end
  end,
})

-- Input method handling
api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  callback = function()
    if vim.bo.modifiable then
      vim.bo.iminsert = 0
      vim.bo.imsearch = 0
    end
  end,
})

-- Backspace behavior
opt.backspace = { "indent", "eol", "start" }

-- Clipboard
opt.clipboard:append("unnamed")

-- Editor behavior
opt.hidden = true
opt.smartindent = true
opt.virtualedit = "onemore"
opt.visualbell = true

-- Line number
vim.opt.number = true
-- vim.opt.relativenumber = true
vim.api.nvim_create_autocmd({ "BufWinEnter", "WinEnter" }, {
  callback = function()
    vim.wo.number = true
  end,
})

-- Display
opt.cursorline = true
opt.cursorcolumn = true
opt.guicursor = "a:blinkwait700-blinkon400-blinkoff250"
opt.laststatus = 2
opt.showcmd = true
opt.showmode = true

-- Wildignore
opt.wildignore:append({
  "node_modules/*",
  "tags",
  "GTAGS",
  "GRTAGS",
  "GPATH",
  "build/**",
  ".git/**"
})

-- List characters
opt.list = true
opt.listchars = {
  tab = "»-",
  trail = "-",
  extends = "»",
  precedes = "«",
  nbsp = "%"
}

-- Leader key
g.mapleader = " "

-- =======================
-- Filetype Customizations
-- =======================

-- YAML: Docker Compose
api.nvim_create_autocmd("FileType", {
  pattern = "yaml",
  callback = function()
    local name = vim.fn.bufname("%")
    if name:match("docker%-compose%.yml$") or name:match("compose%.yml$") then
      vim.bo.filetype = "yaml.docker-compose"
    end
  end,
})

-- SuperCollider filetype
api.nvim_create_autocmd({ "BufEnter", "BufWinEnter", "BufNewFile", "BufRead" }, {
  pattern = { "*.sc", "*.scd" },
  command = "set filetype=supercollider",
})
api.nvim_create_autocmd("FileType", {
  pattern = "supercollider",
  command = "packadd scvim",
})

-- Reapply number in case it's reset by colorscheme
opt.number = true

-- --Filetype-specific settings
-- api.nvim_create_autocmd("FileType", {
--   pattern = "yaml",
--   callback = function()
--     local name = vim.fn.bufname("%")
--     if name:match("docker%-compose%.yml$") or name:match("compose%.yml$") then
--       vim.bo.filetype = "yaml.docker-compose"
--     end
--   end
-- })
-- 
-- -- SuperCollider filetype
-- api.nvim_create_autocmd({ "BufEnter", "BufWinEnter", "BufNewFile", "BufRead" }, {
--   pattern = { "*.sc", "*.scd" },
--   command = "set filetype=supercollider"
-- })
-- 
-- api.nvim_create_autocmd("FileType", {
--   pattern = "supercollider",
--   command = "packadd scvim"
-- })
-- 

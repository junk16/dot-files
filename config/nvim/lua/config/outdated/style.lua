-- lua/config/style.lua

-- Set colorscheme
--vim.cmd("colorscheme hybrid")
vim.cmd("colorscheme tokyonight-night")

-- Set background to dark
-- vim.opt.background = "dark"

-- Set contrast for Everforest
-- vim.g.everforest_background = "hard"
-- vim.g.everforest_better_performance = 1

-- Switch to Everforest colorscheme
-- vim.cmd("colorscheme everforest")

-- Highlight Zenkaku Space (full-width space) character
local function zenkaku_space()
  vim.cmd("highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta")
end

-- Automatically highlight Zenkaku Space on color scheme change
vim.api.nvim_create_augroup("ZenkakuSpace", { clear = true })
vim.api.nvim_create_autocmd("ColorScheme", {
  group = "ZenkakuSpace",
  callback = zenkaku_space
})
vim.api.nvim_create_autocmd({"VimEnter", "WinEnter"}, {
  group = "ZenkakuSpace",
  pattern = "*",
  command = "match ZenkakuSpace /　/"
})

-- Call ZenkakuSpace function on startup
zenkaku_space()

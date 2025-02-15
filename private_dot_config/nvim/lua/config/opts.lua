local set = vim.opt
local api = vim.api

set.number = true
set.relativenumber = true
set.scrolloff = 8
set.shiftwidth = 2
set.smarttab = true
set.tabstop = 2
set.softtabstop = 2
set.title = true
set.cursorlineopt = "number"
set.cursorline = true
set.wrap = true
set.sidescrolloff = 30

-- Customization
api.nvim_set_hl(0, "CursorLineNR", { fg = "#e8c82a" })

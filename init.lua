vim.opt.number = true
vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.scrolloff = 8

-- Horizontal split splits below the current window
vim.opt.splitbelow = true

-- Display whitespaces
vim.opt.list = true
vim.opt.listchars = {
  tab = "» ",
  space = "·",
  trail = "•",
}

require("remap")
require("lazy_config")
require("diagnostics")

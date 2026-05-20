-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.ai_cmp = false

vim.opt.clipboard = "unnamed"

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.expandtab = true
vim.opt.smarttab = true

vim.opt.cursorline = true

vim.opt.list = false

vim.opt.scrolljump = 50

-- avante: views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3

-- avoid conflicts with prettier (https://www.lazyvim.org/extras/formatting/biome#masonnvim)
vim.g.lazyvim_prettier_needs_config = true

-- snacks: disable animations
vim.g.snacks_animate = false

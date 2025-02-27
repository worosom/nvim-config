-- Set basic options
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.hidden = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.encoding = 'utf8'
vim.opt.history = 5000
vim.opt.clipboard = 'unnamedplus'
vim.opt.termguicolors = true


-- Python host configuration
vim.g.python3_host_prog = '/Users/alex/.pyenv/versions/nvim/bin/python3'
vim.g.python_host_prog = '/Users/alex/.pyenv/versions/nvim/bin/python3'

-- Key mappings
vim.keymap.set('n', '<F5>', ':UndotreeToggle<CR>', { silent = true })

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Initialize lazy.nvim
require("lazy").setup("plugins")

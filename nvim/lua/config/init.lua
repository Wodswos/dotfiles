local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- setup package manager lazy.nvim
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath
  })
end

vim.opt.rtp:prepend(lazypath)

-- setup config
require('config.globals')
require('config.options')

-- setup plugin
-- way 1
-- require("lazy").setup({
--   "folke/which-key.nvim",
--   { "folke/neoconf.nvim", cmd = "Neoconf"},
--   "folke/neodev.nvim",
--   "nvim-treesitter/nvim-treesitter"
-- })

-- way 2
require("lazy").setup("plugins")

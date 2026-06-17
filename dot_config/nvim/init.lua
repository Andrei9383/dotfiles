-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.termguicolors = false
vim.opt.background = "dark"
vim.cmd("colorscheme vim")
vim.cmd("colorscheme delek")
vim.g.snacks_animate = false
vim.o.cursorline = false

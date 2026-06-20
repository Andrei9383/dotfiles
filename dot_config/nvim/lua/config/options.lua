-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- System clipboard.
-- Makes normal y/p use the OS clipboard register "+".
-- Example: yy copies to system clipboard, p pastes from it.
vim.opt.clipboard = "unnamedplus"

-- Neovide GUI settings
if vim.g.neovide then
  -- Change this font name if you use another Nerd Font.
  -- Spaces can be written as underscores in guifont.

  -- Initial Neovide zoom / scale.
  vim.g.neovide_scale_factor = 1.0
end

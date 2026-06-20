-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Neovide terminal-like copy/paste + font zoom
if vim.g.neovide then
  local function paste()
    vim.api.nvim_paste(vim.fn.getreg("+"), true, -1)
  end

  local function zoom_in()
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1.1
  end

  local function zoom_out()
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor / 1.1
  end

  local function zoom_reset()
    vim.g.neovide_scale_factor = 1.0
  end

  -- Copy like a Linux terminal: Ctrl+Shift+C
  --
  -- In visual mode: copies selected text.
  -- In normal mode: copies the current line.
  vim.keymap.set("x", "<S-C-c>", '"+y', {
    desc = "Copy selection to system clipboard",
    silent = true,
  })

  vim.keymap.set("n", "<S-C-c>", '"+yy', {
    desc = "Copy current line to system clipboard",
    silent = true,
  })

  -- Paste like a Linux terminal: Ctrl+Shift+V
  --
  -- Works in normal, insert, visual, command, and terminal mode.
  vim.keymap.set({ "n", "i", "x", "c", "t" }, "<S-C-v>", paste, {
    desc = "Paste from system clipboard",
    silent = true,
  })

  -- Extra terminal-style alternatives:
  -- Ctrl+Insert = copy, Shift+Insert = paste
  vim.keymap.set("x", "<C-Insert>", '"+y', {
    desc = "Copy selection to system clipboard",
    silent = true,
  })

  vim.keymap.set("n", "<C-Insert>", '"+yy', {
    desc = "Copy current line to system clipboard",
    silent = true,
  })

  vim.keymap.set({ "n", "i", "x", "c", "t" }, "<S-Insert>", paste, {
    desc = "Paste from system clipboard",
    silent = true,
  })

  -- Font size / zoom
  vim.keymap.set({ "n", "i", "x" }, "<C-=>", zoom_in, {
    desc = "Increase Neovide font size",
    silent = true,
  })

  vim.keymap.set({ "n", "i", "x" }, "<C-->", zoom_out, {
    desc = "Decrease Neovide font size",
    silent = true,
  })

  vim.keymap.set({ "n", "i", "x" }, "<C-0>", zoom_reset, {
    desc = "Reset Neovide font size",
    silent = true,
  })
end

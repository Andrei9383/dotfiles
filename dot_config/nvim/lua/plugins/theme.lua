return {
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vim",
    },
  },

  {
    "folke/snacks.nvim",

    opts = {
      indent = {
        enabled = false,
      },
    },
  },
}

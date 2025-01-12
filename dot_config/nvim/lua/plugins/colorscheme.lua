return {
  -- add ondark
  -- { "navarasu/onedark.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "joshdick/onedark.vim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    --[[
    opts = {
      colorscheme = "onedark",
      style = "warm",
      transparent = true,
      code_style = {
        comments = "none",
        keywords = "none",
        functions = "none",
        strings = "none",
        variables = "none",
      },
    },
    ]]
    opts = {
      colorscheme = "onedark",
    },
  },
}

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "lua", "tsx", "javascript", "typescript", "vim", "vimdoc" },
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    -- In the new version, we use the root module
    require("nvim-treesitter").setup(opts)
  end,
}

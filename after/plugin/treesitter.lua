return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "python",
        "javascript",
        "lua",
        "c",
        "java",
        "kotlin",
        "markdown",
      },

      highlight = {
        enable = true,
      },
    })
  end,
}

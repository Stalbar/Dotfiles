return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "bash",
        "c",
        "c_sharp",
        "css",
        "dart",
        "dockerfile",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "typescript",
        "vim",
        "regex",
        "markdown_inline",
        "xml",
        "http",
        "graphql",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

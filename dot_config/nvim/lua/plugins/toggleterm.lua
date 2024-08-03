return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function ()
    require("toggleterm").setup({
      direction = "float",
      float_opts = {
        border = 'curved',
      },
    })
    vim.keymap.set("n", "<leader>q", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
  end
}

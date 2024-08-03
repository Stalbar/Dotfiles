return {
  "sindrets/diffview.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.keymap.set("n", "<leader>dvo", ":DiffviewOpen<CR>", { desc = "Open Diff View" })
    vim.keymap.set("n", "<leader>dvc", ":DiffviewClose<CR>", { desc = "Close Diff View" })
  end,
}

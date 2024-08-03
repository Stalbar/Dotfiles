return {
  "akinsho/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim",
  },
  config = function ()
    require("flutter-tools").setup({
      decorations = {
        statusline = {
          app_version = true,
          device = true,
        },
      },
      lsp = {
        color = {
          enabled = true,
          background = true,
          virtual_text = false,
        }
      }
    })
    vim.keymap.set("n", "<leader>ftru", ":FlutterRun<CR>", { desc = "Flutter Run" })
    vim.keymap.set("n", "<leader>ftd", ":FlutterDevices<CR>", { desc = "Flutter Devices" })
    vim.keymap.set("n", "<leader>ftr", ":FlutterReload<CR>", { desc = "Flutter Reload" })
    vim.keymap.set("n", "<leader>ftR", ":FlutterRestart<CR>", { desc = "Flutter Restart" })
    vim.keymap.set("n", "<leader>ftq", ":FlutterQuit<CR>", { desc = "Flutter Quit" })
  end
}

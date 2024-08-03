return {
  "sontungexpt/url-open",
  event = "VeryLazy",
  config = function ()
    require("url-open").setup({
      highlight_url = {
        cursor_move = {
          fg = "#ffb86c",
        }
      }
    })
    vim.keymap.set("n", "<leader>ou", "<esc>:URLOpenUnderCursor<CR>", { desc = "Open URL under cursor" })
  end
}

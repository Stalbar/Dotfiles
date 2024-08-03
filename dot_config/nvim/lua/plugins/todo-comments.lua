return {
  "folke/todo-comments.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function ()
    local todo = require("todo-comments")
    todo.setup({
      highlight = {
        before = "fg",
        after = "fg",
      }
    })
    vim.keymap.set("n", "]td", function ()
      todo.jump_next()
    end, { desc = "Next todo comment" })
    vim.keymap.set("n", "[td", function ()
      todo.jump_prev()
    end, { desc = "Previous todo comment" })
  end
}

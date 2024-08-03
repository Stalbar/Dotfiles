return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      signs = {
        add = { text = "┃" },
        change = { text = "┃" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
      signs_staged = {
        add = { text = "┃" },
        change = { text = "┃" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
      signs_staged_enable = true,
      signcolumn = true,
      numhl = true,
      watch_gitdir = {
        follow_files = true,
      },
      auto_attach = true,
      attach_to_untracked = true,
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "right_align",
        delay = 0,
        ignore_whitespaces = false,
        virt_text_priority = 100,
      },
      current_line_blame_formatter = "<author>, <author_time:%d/%m/%y %H:%M> - <summary>",
      sign_priority = 6,
      update_debounce = 100,
      status_formatter = nil,
    })
  end,
}

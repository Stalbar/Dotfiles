return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  config = function()
    require("neo-tree").setup({
      popup_border_style = "rounded",
      add_blank_line_at_top = true,
      hide_root_node = true,
      retain_hidden_root_indent = true,
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        hijack_netrw_behavior = "open_current",
      },
      default_component_configs = {
        indent = {
          with_markers = true,
          indent_marker = "│",
          last_indent_marker = "└",
          indent_size = 2,
          padding = 1,
          with_expanders = true,
        },
        diagnostics = {
          symbols = {
            hint = "",
            info = "",
            warning = "",
            error = "",
          },
        },
        modified = {
          symbol = "",
          highlight = "NeoTreeModified",
        },
        file_size = {
          enabled = false,
        },
        last_modified = {
          enabled = false,
        },
      },
      source_selector = {
        winbar = true,
        statusline = true,
        sources = { -- table
          {
            source = "filesystem", -- string
            display_name = " 󰉓 Files ", -- string | nil
          },
          {
            source = "buffers", -- string
            display_name = " 󰈚 Buffers ", -- string | nil
          },
          {
            source = "git_status", -- string
            display_name = " 󰊢 Git ", -- string | nil
          },
        },
      },
    })
    vim.keymap.set("n", "<leader>ntr", ":Neotree focus float toggle reveal<CR>", { desc = "Open Neo-Tree" })
  end,
}

return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "catppuccin/nvim",
  },
  config = function ()
    local bufferline = require("bufferline")
    local mocha = require("catppuccin.palettes").get_palette("mocha")
    bufferline.setup({
      highlights = require("catppuccin.groups.integrations.bufferline").get({
        styles = { "italic", "bold" },
        custom = {
          all = {
            fill = { bg = "#000000" },
          },
          mocha = {
            background = { fg = mocha.text },
          },
          latte = {
            background = { fg = "#000000" },
          },
        },
      }),
      options = {
        style_preset = bufferline.style_preset.minimal,
        themable = true,
        numbers = "none",
        indicator = {
          style = "none",
        },
        show_close_icon = false,
        show_buffer_close_icons = false,
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function (count, level, diagnostics_dict, context)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end,
        separator_style = "slope",
      },
    })
    vim.keymap.set("n", "<TAB>", ":BufferLineCycleNext<CR>", { desc = "Go to left buffer" })
    vim.keymap.set("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", { desc = "Go to right buffer" })
    vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Close buffer" })
  end
}

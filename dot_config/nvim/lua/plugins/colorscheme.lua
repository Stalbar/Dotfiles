return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			integrations = {
				notify = true,
				alpha = true,
				mason = true,
				neotree = true,
				noice = true,
				lsp_trouble = true,
				which_key = true,
				colorful_winsep = {
          enabled = true,
				  color = "red",
        }
			},
		})
	vim.cmd.colorscheme("catppuccin")
	end,
}

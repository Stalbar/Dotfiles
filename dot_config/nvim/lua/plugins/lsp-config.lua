return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "tsserver", "css-lsp" },
			})
		end,
		{
			"neovim/nvim-lspconfig",
			lazy = false,
			config = function()
				local capabilities = require("cmp_nvim_lsp").default_capabilities()
				local lspconfig = require("lspconfig")

				local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
				for type, icon in pairs(signs) do
					local hl = "DiagnosticSign" .. type
					vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
				end

				lspconfig.omnisharp.setup({
					cmd = { "dotnet", "/usr/lib/omnisharp-roslyn/OmniSharp.dll" },
					capabilities = capabilities,
				})
				lspconfig.lua_ls.setup({
					capabilities = capabilities,
				})
				lspconfig.tsserver.setup({
					capabilities = capabilities,
				})
				lspconfig.bashls.setup({
					capabilities = capabilities,
				})
				lspconfig.cssls.setup({
					capabilities = capabilities,
				})
				lspconfig.html.setup({
					capabilities = capabilities,
				})

				vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
				vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
				vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go to references" })
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
				vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { desc = "Rename" })
			end,
		},
	},
}

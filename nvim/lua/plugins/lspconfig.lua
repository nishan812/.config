return {
	{
		"williamboman/mason.nvim",

		config = function()
			require("mason").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",

		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			--JavaSkript
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})

			--python
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})

			--lua
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			--css
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})

			--tailwind
			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})

			--html
			lspconfig.html.setup({
				capabilities = capabilities,
			})
		end,
	},
}

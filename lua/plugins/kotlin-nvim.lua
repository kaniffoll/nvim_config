return {
	"AlexandrosAlexiou/kotlin.nvim",
	ft = { "kotlin" },
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
		"stevearc/oil.nvim",
		"folke/trouble.nvim",
	},
	config = function()
		require("kotlin").setup({
			inlay_hints = {
				enabled = true,
			},
		})
	end,
}

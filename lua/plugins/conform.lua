return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },

			python = { "black" },

			javascript = { "prettier" },

			json = { "prettier" },
			yaml = { "prettier" },

			kotlin = { "ktlint" },

			c = { "clang_format" },
			cpp = { "clang_format" },

			java = { "google-java-format" },

			sql = { "sleek" },
		},
	},
	config = function(_, opts)
		require("conform").setup(opts)

		vim.keymap.set("n", "<leader>f", function()
			require("conform").format({
				async = true,
				lsp_fallback = true,
			})
		end, { desc = "Format file" })
	end,
}

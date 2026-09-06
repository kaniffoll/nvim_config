return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			transparent = true,
			overrides = function(colors)
				local theme = colors.theme
				return {
					LineNr = { bg = "none", fg = theme.ui.nontext },
					CursorLineNr = { bg = "none", fg = theme.ui.special, bold = true },
					SignColumn = { bg = "none" },
					FoldColumn = { bg = "none", fg = theme.ui.nontext },

					DiagnosticSignError = { bg = "none", fg = theme.diag.error },
					DiagnosticSignWarn = { bg = "none", fg = theme.diag.warning },
					DiagnosticSignInfo = { bg = "none", fg = theme.diag.info },
					DiagnosticSignHint = { bg = "none", fg = theme.diag.hint },
				}
			end,
		})
		vim.cmd("colorscheme kanagawa")
	end,
}

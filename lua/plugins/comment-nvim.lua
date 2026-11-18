return {
	"numToStr/Comment.nvim",
	opts = {
		pre_hook = function(ctx)
			-- Neovim 0.12 changed `vim.treesitter.get_parser()` to return nil
			-- (instead of raising) when no parser is installed for the filetype.
			-- Comment.nvim then calls methods on nil and fails with "[Comment.nvim] nil"
			-- (e.g. in .sql files when the `sql` parser isn't installed).
			local ok, parser = pcall(vim.treesitter.get_parser, 0)
			if ok and parser then
				return -- let Comment.nvim use its treesitter logic
			end

			-- Fall back to the plugin's built-in commentstring table, then to
			-- Neovim's native 'commentstring'.
			return require("Comment.ft").get(vim.bo.filetype, ctx.ctype)
				or vim.bo.commentstring
		end,
	},
}

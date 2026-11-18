return {
	"rmagatti/auto-session",
	config = function()
		-- make sure filetype/syntax (and therefore LSP, treesitter, ...)
		-- are restored correctly for every buffer in the session
		vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

		require("auto-session").setup({
			auto_save = true,
			-- `nvim` (no arguments) restores the saved session for the cwd
			auto_restore = true,
			-- `nvim .` (or `nvim <dir>`) does NOT restore a session,
			-- it just opens Neovim in that directory
			args_allow_single_directory = false,
			-- only auto-save when started without arguments
			args_allow_files_auto_save = false,
			suppressed_dirs = { "~/", "~/Downloads", "/" },
			-- wait until lazy.nvim is done, so LSP/treesitter/etc. are loaded
			-- before the session buffers are restored
			lazy_support = true,
			show_auto_restore_notif = true,
			-- a restored session must not kill already running language servers
			lsp_stop_on_restore = false,
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>wr", "<cmd>AutoSession restore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
		keymap.set("n", "<leader>ws", "<cmd>AutoSession save<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
	end,
}

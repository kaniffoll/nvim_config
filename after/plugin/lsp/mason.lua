require("mason").setup({ ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup {
	ensure_installed = {
		"lua_ls",
		"html",
		"pylsp",
		"jdtls",
		"kotlin_language_server",
	}
}

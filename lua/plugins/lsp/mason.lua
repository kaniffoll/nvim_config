return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
		    "lua_ls",
		    "html",
		    "pylsp",
		    "jdtls",
		    "kotlin_language_server",
            "clangd"
	    }
    },
    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            }
        },
        "neovim/nvim-lspconfig"
    }
}

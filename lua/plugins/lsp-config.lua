return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "tsserver", "omnisharp", "lua_ls", "jdtls", "rust_analyzer", "sqlls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				cmd = {
					"C:\\Users\\manuel.guevara\\AppData\\Local\\nvim-data\\mason\\packages\\lua-language-server\\bin\\lua-language-server.exe",
				},
        capabilities = capabilities
			})
			lspconfig.omnisharp.setup({
				cmd = {
					"C:\\Users\\manuel.guevara\\AppData\\Local\\nvim-data\\mason\\packages\\omnisharp\\libexec\\omnisharp.exe",
					"--languageserver",
					"--hostPID",
					tostring(vim.fn.getpid()),
				},
				root_dir = require("lspconfig").util.root_pattern("*.sln", "*.csproj", ".git"),
        capabilities = capabilities
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}

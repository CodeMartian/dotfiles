return { 
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"neovim/nvim-lspconfig"
	},
	handlers = {
		rust_analyzer = function() end,
	}
}

return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "ms-jpq/coq_nvim", branch = "coq" },
		{ "ms-jpq/coq.artifacts", branch = "artifacts" },
		{ "ms-jpq/coq.thirdparty", branch = "3p" },
	},
	init = function()
		vim.g.coq_settings = {
			auto_start = true, -- if you want to start COQ at startup
			-- Your COQ settings here
		}
	end,
}

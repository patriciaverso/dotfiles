return {
	"folke/neodev.nvim",
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	{ "mason-org/mason.nvim", opts = {}},
	{ "nvim-treesitter/nvim-treesitter", lazy = false, build = ":TSUpdate" },
	{ "simrat39/rust-tools.nvim" },
	"neovim/nvim-lspconfig"
}

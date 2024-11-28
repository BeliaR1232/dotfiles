require("conform").setup({
	format_on_save = {
		timeout_ms = 5000,
	},
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "ruff_fix", "ruff_organize_imports", "ruff_format" },
	},
	formatters = {
		ruff_format = {
			append_args = {
				"--line-length",
				120,
			},
		},
	},
})

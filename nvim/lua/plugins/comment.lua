require("Comment").setup({
	toggler = {
		---Line-comment keymap
		line = "<leader>/",
		---Block-comment keymap
		block = "<leader>.",
	},
	opleader = {
		---Line-comment keymap
		line = "<leader>/",
		---Block-comment keymap
		block = "<leader>.",
	},
	mappings = {
		---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
		basic = true,
	},
})

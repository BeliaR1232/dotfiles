require("csvview").setup({
	parser = {
		delimiter = {
			default = ";",
			ft = {
				tsv = "\t",
			},
		},
		quote_char = '"',
	},
	view = {
		--- minimum width of a column
		--- @type integer
		min_column_width = 5,

		--- spacing between columns
		--- @type integer
		spacing = 2,

		---@type "highlight" | "border"
		display_mode = "border",
	},
})

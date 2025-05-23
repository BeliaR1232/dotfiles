require("autosave").setup({
	enable = true,
	prompt_style = "stdout",
	prompt_message = function()
		return "Autosave: Файл сохранён в " .. vim.fn.strftime("%H:%M:%S")
	end,
	events = { "InsertLeave", "TextChanged" },
	conditions = {
		exists = true,
		modifiable = true,
		filename_is_not = {},
		filetype_is_not = {},
	},
	write_all_buffers = false,
	debounce_delay = 135,
})

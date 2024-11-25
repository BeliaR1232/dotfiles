vim.g.mapleader = " "

-- Quit
vim.keymap.set("n", "<C-q>", "<cmd>:q<CR>", { desc = "Выйти" })

-- Copy all text
vim.keymap.set("n", "<C-a>", "<cmd>%y+<CR>", { desc = "Скопировать весь текст" })

-- Saving a file via Ctrl+S
vim.keymap.set({ "n", "i" }, "<C-s>", "<cmd>:w<CR>", { desc = "Сохранить" })

-- Neotree
vim.keymap.set(
	"n",
	"<leader>t",
	":Neotree toggle<CR>",
	{ desc = "Открыть проводник", noremap = true, silent = true }
)

-- Telescope
vim.keymap.set(
	"n",
	"<leader>ff",
	":Telescope find_files<CR>",
	{ desc = "Найти файл", noremap = true, silent = true }
)
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "live grep", noremap = true, silent = true })
vim.keymap.set(
	"n",
	"<leader>fb",
	":Telescope buffers<CR>",
	{ desc = "Поиск буферов", noremap = true, silent = true }
)

-- BufferLine
vim.keymap.set(
	"n",
	"<Tab>",
	":BufferLineCycleNext<CR>",
	{ desc = "Следующий буфер", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<S-Tab>",
	":BufferLineCyclePrev<CR>",
	{ desc = "Предыдущий буфер", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<C-ba>",
	":BufferLineCloseOthers<CR>",
	{ desc = "Закрыть все остальные буферы", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<C-x>",
	"<cmd>:bdelete<CR>",
	{ desc = "Закрыть текущий буфер", noremap = true, silent = true }
)

vim.g.mapleader = " "
vim.keymap.set({ "n", "v" }, ",<leader>", "<cmd>:nohlsearch<CR>")

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
-- Fzf
vim.keymap.set("n", "<leader>ff", require("fzf-lua").files, { desc = "Fzf Files" })
vim.keymap.set("n", "<leader>fg", require("fzf-lua").grep, { desc = "Fzf Grep" })
vim.keymap.set("n", "<leader>fw", require("fzf-lua").grep_cword, { desc = "Fzf Word" })
vim.keymap.set("n", "<leader>fr", require("fzf-lua").lsp_references, { desc = "Fzf References" })
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

-- CSV view
vim.keymap.set("n", "<leader>vc", ":CsvViewToggle<CR>", { desc = "Csv view" })

return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		signcolumn = true, -- значки слева: + ~ _
		numhl = false, -- подсветка номеров строк
		linehl = false, -- подсветка всей строки
		word_diff = false, -- подсветка изменённых слов внутри строки
		attach_to_untracked = true, -- показывать и для неотслеживаемых файлов
		signs_staged_enable = true, -- отдельные значки для уже застейдженного
		current_line_blame = false,
	},
}

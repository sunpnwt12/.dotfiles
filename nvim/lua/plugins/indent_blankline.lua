local opts = {
	show_current_context = true,
	show_current_context_start = true,
}

return {
	"lukas-reineke/indent-blankline.nvim",
	opts = opts,
	event = "BufReadPre",
}

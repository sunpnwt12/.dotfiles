local format_augroup = vim.api.nvim_create_augroup("LspFormatting", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
	group = format_augroup,
})

local handle_session_augroup = vim.api.nvim_create_augroup("HandleSessionRestore", { clear = true })
vim.api.nvim_create_autocmd("DirChanged", {
	callback = function()
		vim.cmd("Lazy load nvim-lspconfig")
		vim.cmd("LspRestart")
	end,
	group = handle_session_augroup,
})

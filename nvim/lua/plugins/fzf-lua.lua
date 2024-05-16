local config = function()
    -- for max performance
    require("fzf-lua").setup({ 'telescope' })
    require("fzf-lua").register_ui_select(function(_, items)
        local min_h, max_h = 0.15, 0.70
        local h = (#items + 4) / vim.o.lines
        if h < min_h then
            h = min_h
        elseif h > max_h then
            h = max_h
        end
        return { winopts = { height = h, width = 0.40, row = 0.40 } }
    end)

    vim.api.nvim_create_autocmd("VimResized", {
        pattern = "*",
        command = 'lua require("fzf-lua").redraw()',
    })

    local map = vim.keymap.set
    local defaults_opts = { noremap = true, silent = true }

    map("n", "<leader>ff", "<CMD>lua require('fzf-lua').files()<CR>", defaults_opts)
    map("n", "<leader>fp", "<CMD>lua require('fzf-lua').git_files()<CR>", defaults_opts)
    map("n", "<leader>fk", "<CMD>lua require('fzf-lua').keymaps()<CR>", defaults_opts)
    map("n", "<leader>fb", "<CMD>lua require('fzf-lua').buffers()<CR>", defaults_opts)
    map("n", "<leader>fc", "<CMD>lua require('fzf-lua').lgrep_curbuf()<CR>", defaults_opts)
    map("n", "<leader>fg", "<CMD>lua require('fzf-lua').live_grep()<CR>", defaults_opts)
    map("n", "<leader>fr", "<CMD>lua require('fzf-lua').oldfiles()<CR>", defaults_opts)
    map("n", "<leader>fp", "<CMD>lua require('fzf-lua').gitfiles()<CR>", defaults_opts)
    map("n", "<leader>fo", "<CMD>lua require('fzf-lua').lsp_document_symbols()<CR>", defaults_opts)
end

return {
    "ibhagwan/fzf-lua",
    cond = true,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = config,
    event = "VeryLazy",
}

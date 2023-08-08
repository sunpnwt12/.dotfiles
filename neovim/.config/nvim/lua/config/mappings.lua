local map = vim.keymap.set
local defaults_opts = { noremap = true, silent = true }

-- command
vim.cmd([[command! Wd write|bdelete]])

-- remap
--

-- new line without leaving normal mode
map("n", "<A-o>", "o<Esc>", defaults_opts)
map("n", "<A-O>", "O<Esc>", defaults_opts)

-- centered cursor
map("n", "<C-d>", "<C-d>zz", defaults_opts)
map("n", "<C-u>", "<C-u>zz", defaults_opts)
-- yank the rest of the line
map("n", "Y", "yg_", defaults_opts)

-- blackhole paste, delete
map("x", "<leader>p", '"_dP', defaults_opts)
map({ "n", "v" }, "<leader>d", '"_d', defaults_opts)

-- mapping copy-paste from/to copyboard
-- copy from clipboard
map({ "n", "v" }, "<leader>y", '"+y', defaults_opts)
map("n", "<leader>Y", '"+yg_', defaults_opts)
-- map("n", "<leader>yy", '"+yy', defaults_opts)
-- paste from clipboard
map({ "n", "v" }, "<leader>p", '"+p', defaults_opts)
map({ "n", "v" }, "<leader>P", '"+P', defaults_opts)

-- substitute all under cursor in the buffer
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Resizing window
map("n", "<C-Left>", "<CMD>vertical resize +3<CR>", defaults_opts)
map("n", "<C-Right>", "<CMD>vertical resize -3<CR>", defaults_opts)
map("n", "<C-Up>", "<CMD>resize +3<CR>", defaults_opts)
map("n", "<C-Down>", "<CMD>resize -3<CR>", defaults_opts)

-- Mason and Lazy shortcut
map("n", "<leader>ms", "<CMD>Mason<CR>", defaults_opts)
map("n", "<leader>lz", "<CMD>Lazy<CR>", defaults_opts)
map("n", "<leader>li", "<CMD>LspInfo<CR>", defaults_opts)
map("n", "<leader>ni", "<CMD>NullLsInfo<CR>", defaults_opts)

--moving lines
-- map("n", "<a-j>", "<CMD>m .+1<cr>==", defaults_opts)
-- map("v", "<a-j>", "<CMD>m '>+1<cr>gv=gv", defaults_opts)
-- map("n", "<A-k>", "<CMD>m .-2<CR>==", defaults_opts)
-- map("v", "<A-k>", "<CMD>m '<-2<CR>gv=gv", defaults_opts)

-- telescope
map("n", "<leader>ff", "<CMD>Telescope find_files<CR>", defaults_opts)
map("n", "<leader>fk", "<CMD>Telescope keymaps<CR>", defaults_opts)
map("n", "<leader>fb", "<CMD>Telescope buffers<CR>", defaults_opts)
map("n", "<leader>fc", "<CMD>Telescope current_buffer_fuzzy_find<CR>", defaults_opts)
map("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", defaults_opts)
map("n", "<leader>fr", "<CMD>Telescope oldfiles<CR>", defaults_opts)
-- telescope-zoxide
map("n", "<leader>fz", "<CMD>Telescope zoxide list<CR>", defaults_opts)

-- oil
map("n", "<leader>o", "<CMD>require('oil').open()<CR>", defaults_opts)

-- Nvim-tree
map("n", "<leader>e", "<CMD>NvimTreeToggle<CR>", defaults_opts)

-- bufferline
map("n", "<S-l>", "<CMD>BufferLineCycleNext<CR>", defaults_opts)
map("n", "<S-h>", "<CMD>BufferLineCyclePrev<CR>", defaults_opts)
-- map("n", "", "<CMD>BufferLineMoveNext<CR>", defaults_opts)
-- map("n", "", "<CMD>BufferLineMovePrev<CR>", defaults_opts)

-- trouble
map("n", "<leader>xx", "<CMD>Trouble<CR>", defaults_opts)
map("n", "<leader>xw", "<CMD>Trouble workspace_diagnostics<CR>", defaults_opts)
map("n", "<leader>xd", "<CMD>Trouble document_diagnostics<CR>", defaults_opts)
map("n", "<leader>xq", "<CMD>Trouble quickfix<CR>", defaults_opts)
map("n", "gr", "<CMD>Trouble lsp_references<CR>", defaults_opts)

-- code_runner
map("n", "<leader>rc", "<CMD>RunCode<CR>", defaults_opts)

-- DAP
-- map("n", "<leader>dt", "<CMD>lua require('dapui').toggle()<CR>", defaults_opts)
map("n", "<F5>", "<CMD>lua require('dap').continue()<CR>", defaults_opts)
map("n", "<F6>", "<CMD>lua require'dap'.step_over()<CR>", defaults_opts)
map("n", "<F7>", "<CMD>lua require'dap'.step_into()<CR>", defaults_opts)
map("n", "<F8>", "<CMD>lua require'dap'.step_out()<CR>", defaults_opts)
map("n", "<F9>", "<CMD>lua require('dap').restart()<CR>", defaults_opts)
map("n", "<leader>b", "<CMD>lua require('dap').toggle_breakpoint()<CR>", defaults_opts)
map("n", "<leader>B", "<CMD>lua require('dap').set_breakpoint(vim.fn.input('BP Cond: '))<CR>", defaults_opts)
map("n", "<leader>lp", "<CMD>lua require('dap').set_breakpoint(nil, nil, vim.fn.input('LP Msg: '))<CR>", defaults_opts)
-- map("n", "<leader>dr", "<CMD>lua require('dap').repl.open()<CR>", defaults_opts)

-- Navigator.nvim with tmux
map({ "n", "t" }, "<A-h>", "<CMD>lua require('Navigator').left()<CR>", defaults_opts)
map({ "n", "t" }, "<A-l>", "<CMD>lua require('Navigator').right()<CR>", defaults_opts)
map({ "n", "t" }, "<A-k>", "<CMD>lua require('Navigator').up()<CR>", defaults_opts)
map({ "n", "t" }, "<A-j>", "<CMD>lua require('Navigator').down()<CR>", defaults_opts)
map({ "n", "t" }, "<A-p>", "<CMD>lua require('Navigator').previous()<CR>", defaults_opts)

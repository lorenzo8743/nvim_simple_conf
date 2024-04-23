-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------
-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- Remap exit normal mode to jk
keymap.set("i", "jk", "<ESC>", { desc = "Exit normal mode with jk" })

-- Clear search highlight
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

--nvim-tree
-- keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>fd", "<cmd>Telescope find_files hidden=true<cr>") -- find files within current working directory include dot files
--keymap.set("n", "<leader>fas", require("auto-session.session-lens").search_session, { desc = 'Search for available sessions'})

-- dap
keymap.set("n", "<F5>", function()
	require("dap").continue()
end, { desc = "Start debug" })
keymap.set("n", "<F10>", function()
	require("dap").step_over()
end, { desc = "Step over" })
keymap.set("n", "<F11>", function()
	require("dap").step_into()
end, { desc = "Step into" })
keymap.set("n", "<F12>", function()
	require("dap").step_out()
end, { desc = "Step out" })
keymap.set("n", "<Leader>b", function()
	require("dap").toggle_breakpoint()
end, { desc = "toggle_breakpoint" })
keymap.set("n", "<Leader>dt", function()
	require("dap").terminate()
end, { desc = "Terminate debug" })
-- dap ui
keymap.set("n", "<Leader>ui", function()
	require("dapui").toggle()
end, { desc = "start debug UI" })

return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {},
	config = function()
		local wk = require("which-key")
		wk.register({
			["<leader>x"] = { name = "+trouble" },
			["<leader>e"] = { ":NvimTreeToggle<CR>", "Toggle NvimTree" },
			["<leader>s"] = {
				name = "+window",
				v = { "<C-w>v", "Split window vertically" },
				h = { "<C-w>s", "Split window horizontally" },
				e = { "<C-w>=", "Make split window equal width and height" },
				x = { ":close<CR>", "Close current split window" },
				m = { ":MaximizerToggle<CR>", "Toggle window maximization" },
			},
			["<leader>t"] = {
				name = "+tab",
				o = { ":tabnew<CR>", "Open new tab" },
				x = { ":tabclose<CR>", "Close current tab" },
				n = { ":tabn<CR>", "Go to next tab" },
				p = { "tabp<CR>", "Go to previus tab" },
			},
			["<leader>f"] = {
				name = "+telescope",
				f = { "<cmd>Telescope find_files<cr>", "Find files" },
				s = { "<cmd>Telescope live_grep<cr>", "Find strings as typing" },
				c = { "<cmd>Telescope grep_string<cr>", "Find string under cursor" },
				b = { "<cmd>Telescope buffers<cr>", "List open buffers" },
				h = { "<cmd>Telescope help_tags<cr>", "List help tags" },
				d = { "<cmd>Telescope find_files hidden=true<cr>", "Find files including hidden" },
			},
			["<leader>h"] = {
				name = "+gitsigns",
				s = { ":Gitsigns stage_hunk<CR>", "Stage hunk" },
				r = { ":Gitsigns reset_hunk<CR>", "Reset hunk" },
				S = { "<cmd>Gitsigns stage_buffer<CR> ", "Stage buffer" },
				u = { "<cmd>Gitsigns undo_stage_hunk<CR> ", "Undo stage hunk" },
				R = { "<cmd>Gitsigns reset_buffer<CR>", "Reset buffer" },
				p = { "<cmd>Gitsigns preview_hunk<CR>", "Preview hunk" },
				d = { "<cmd>Gitsigns diffthis<CR>", "Diff this" },
				b = { "<cmd>Gitsigns toggle_current_line_blame<CR>", "Toggle current line blame" },
				td = { "<cmd>Gitsigns toggle_deleted<CR>", "Toggle deleted" },
			},
			["<F5>"] = {
				function()
					require("dap").continue()
				end,
				"Start debug",
			},
			["<F10>"] = {
				function()
					require("dap").step_over()
				end,
				"Step over",
			},
			["<F11>"] = {
				function()
					require("dap").step_into()
				end,
				"Step into",
			},
			["<F12>"] = {
				function()
					require("dap").step_out()
				end,
				"Step out",
			},
			["<Leader>b"] = {
				function()
					require("dap").toggle_breakpoint()
				end,
				"Toggle breakpoint",
			},
			["<Leader>d"] = { name = "Terminate debug" },
			["<Leader>dt"] = {
				function()
					require("dap").terminate()
				end,
				"Terminate debug",
			},
			["<Leader>u"] = { name = "Debug UI" },
			["<Leader>ui"] = {
				function()
					require("dapui").toggle()
				end,
				"Toggle debug UI",
			},
			["<F6>"] = { ":FloatermNew<CR>", "Open new Floaterm" },
			["<F7>"] = { ":FloatermToggle<CR>", "Toggle Floaterm" },
			["<F8>"] = { ":FloatermKill<CR>", "Kill Floaterm" },
			["<F9>"] = { ":FloatermNew lazygit<CR>", "New lazygit Floaterm" },
		})
	end,
}

return {
	"glepnir/dashboard-nvim",
	event = "VimEnter",
	dependencies = { { "nvim-tree/nvim-web-devicons" } },

	config = function()
		require("dashboard").setup({
			theme = "hyper",
			shortcut_type = "letter",
			hide = {
				statusline = true,
				winbar = true,
			},
			config = {
				week_header = {
					enable = true,
				},
				shortcut = {
					{
						icon = " ",
						icon_hl = "@variable",
						desc = "Files",
						group = "Label",
						action = "Telescope find_files",
						key = "f",
					},
					{
						desc = " dotfiles",
						group = "Number",
						action = "Telescope find_files hidden=true",
						key = "d",
					},
					{
						icon = " ",
						desc = "Settings",
						group = "Label",
						action = ":e ~/.config/nvim/init.lua",
						key = "s",
					},
				},
			},
		})
	end,
}

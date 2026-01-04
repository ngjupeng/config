return {
	"stevearc/aerial.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<leader>o", "<cmd>AerialToggle!<CR>", desc = "Toggle [O]utline" },
		{ "<leader>os", "<cmd>Telescope aerial<CR>", desc = "[O]utline [S]earch" },
	},
	opts = {
		layout = {
			default_direction = "right",
			min_width = 30,
		},
		attach_mode = "global",
		-- Only show top-level symbols (functions, classes, etc.)
		filter_kind = {
			"Class",
			"Constructor",
			"Enum",
			"Function",
			"Interface",
			"Method",
			"Struct",
			"Type",
		},
		-- Collapse all nested items by default
		manage_folds = false,
		show_guides = true,
		-- Keymaps inside aerial window
		keymaps = {
			["/"] = "actions.tree_search", -- Search in outline
			["<CR>"] = "actions.jump",
			["o"] = "actions.tree_toggle", -- Toggle expand/collapse
			["O"] = "actions.tree_toggle_recursive",
			["l"] = "actions.tree_open",
			["h"] = "actions.tree_close",
			["zM"] = "actions.tree_close_all",
			["zR"] = "actions.tree_open_all",
		},
	},
	config = function(_, opts)
		require("aerial").setup(opts)
		-- Enable Telescope integration for searching
		require("telescope").load_extension("aerial")
	end,
}

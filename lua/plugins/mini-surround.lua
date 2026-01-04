return {
	{
		"nvim-mini/mini.surround",
		version = false,
		config = function()
			require("mini.surround").setup({
				-- Default mappings:
				-- sa - Add surrounding (e.g., saiw" adds quotes around word)
				-- sd - Delete surrounding (e.g., sd" deletes quotes)
				-- sr - Replace surrounding (e.g., sr"' replaces " with ')
				-- sf - Find surrounding (to the right)
				-- sF - Find surrounding (to the left)
				-- sh - Highlight surrounding
			})
		end,
	},
}

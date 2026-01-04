return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("Comment").setup()

		-- Ctrl+/ to toggle comment (like VS Code)
		vim.keymap.set("n", "<C-/>", function()
			require("Comment.api").toggle.linewise.current()
		end, { desc = "Toggle comment" })

		vim.keymap.set("v", "<C-/>", function()
			local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
			vim.api.nvim_feedkeys(esc, "nx", false)
			require("Comment.api").toggle.linewise(vim.fn.visualmode())
		end, { desc = "Toggle comment" })
	end,
}

return {
	"kdheepak/lazygit.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>gg", "<cmd>LazyGit<CR>", desc = "Open LazyGit" },
	},
	config = function()
		vim.g.lazygit_floating_window_scaling_factor = 0.9
		vim.g.lazygit_floating_window_use_plenary = 0

		-- Close lazygit with Escape or q when unfocused
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "lazygit",
			callback = function()
				vim.keymap.set("n", "<Esc>", "<cmd>close<CR>", { buffer = true, silent = true })
				vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = true, silent = true })
			end,
		})
	end,
}

return {
	"mattn/emmet-vim",
	ft = { "html", "css", "javascriptreact", "typescriptreact", "vue", "svelte" },
	init = function()
		-- Use Tab to expand (only in insert mode)
		vim.g.user_emmet_expandabbr_key = "<C-y>,"
		-- Enable only for specific file types
		vim.g.user_emmet_settings = {
			javascript = { extends = "jsx" },
			typescript = { extends = "tsx" },
		}
	end,
}

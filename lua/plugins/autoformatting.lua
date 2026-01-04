return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>fm',
      function()
        require('conform').format { async = true, lsp_fallback = true }
      end,
      mode = '',
      desc = '[F]or[m]at buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      -- Disable for certain filetypes if needed
      local disable_filetypes = {}
      if disable_filetypes[vim.bo[bufnr].filetype] then
        return
      end
      return {
        timeout_ms = 500,
        lsp_fallback = true,
      }
    end,
    formatters_by_ft = {
      -- Lua
      lua = { 'stylua' },

      -- JavaScript/TypeScript
      javascript = { 'prettierd', 'prettier', stop_after_first = true },
      javascriptreact = { 'prettierd', 'prettier', stop_after_first = true },
      typescript = { 'prettierd', 'prettier', stop_after_first = true },
      typescriptreact = { 'prettierd', 'prettier', stop_after_first = true },

      -- Web
      html = { 'prettierd', 'prettier', stop_after_first = true },
      css = { 'prettierd', 'prettier', stop_after_first = true },
      scss = { 'prettierd', 'prettier', stop_after_first = true },
      json = { 'prettierd', 'prettier', stop_after_first = true },
      jsonc = { 'prettierd', 'prettier', stop_after_first = true },
      yaml = { 'prettierd', 'prettier', stop_after_first = true },
      markdown = { 'prettierd', 'prettier', stop_after_first = true },
      graphql = { 'prettierd', 'prettier', stop_after_first = true },

      -- Python
      python = { 'ruff_format', 'ruff_fix' },

      -- Rust
      rust = { 'rustfmt' },

      -- Solidity
      solidity = { 'forge_fmt' },

      -- Infrastructure
      terraform = { 'terraform_fmt' },
      tf = { 'terraform_fmt' },
      ['terraform-vars'] = { 'terraform_fmt' },
      sql = { 'sql_formatter' },
      dockerfile = { 'hadolint' },

      -- Shell
      sh = { 'shfmt' },
      bash = { 'shfmt' },
      zsh = { 'shfmt' },

      -- Cairo/Starknet
      cairo = { 'cairo_format' },
    },
    formatters = {
      cairo_format = {
        command = 'cairo-format',
        args = { '-i' },
        stdin = false,
      },
    },
  },
}

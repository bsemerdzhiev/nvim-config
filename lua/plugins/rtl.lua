return {
  -- LSP (SVLS)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- verible = {},
        svls = {},
      },
    },
  },

  -- Mason ensure install
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      -- vim.list_extend(opts.ensure_installed, { "verible", "svls" })
      vim.list_extend(opts.ensure_installed, { "svls" })
    end,
  },
}

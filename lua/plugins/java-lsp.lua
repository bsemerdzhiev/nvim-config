return {
  {
    "mfussenegger/nvim-jdtls",
    ft = "java",
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jdtls = { enabled = false },
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "jdtls" })
    end,
  },
}

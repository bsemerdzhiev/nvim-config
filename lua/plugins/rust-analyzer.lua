return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      opts.servers.rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              allTargets = false,
              features = "none",
            },

            cachePriming = { enable = false },
            checkOnSave = { enable = false },
            check = { command = "check", allTargets = false },
          },
        },
      }
    end,
  },
}

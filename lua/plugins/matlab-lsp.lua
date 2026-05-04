return {
  require("lspconfig").matlab_ls.setup({
    cmd = { "matlab-language-server" },
    filetypes = { "matlab" },
    root_dir = require("lspconfig.util").root_pattern(".git"),
  }),
}

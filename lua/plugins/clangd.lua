return {
  require("lspconfig").clangd.setup({
    cmd = { "clangd", "--enable-config" },
  }),
}

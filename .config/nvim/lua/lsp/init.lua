local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("lsp.lsp-installer")
require("lsp.handlers").setup {}

lspconfig.clangd.setup({
  cmd = {
    "clangd",
  },
  --on_init = custom_init,

  --on_attach = custom_attach,

})

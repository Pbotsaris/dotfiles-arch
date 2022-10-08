local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

require('lspconfig')['clangd'].setup {
     cmd = {'clangd', '--background-index', '--clang-tidy'}
}

require("lsp.lsp-installer")
require("lsp.handlers").setup {}




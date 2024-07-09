return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    'williamboman/mason.nvim',
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        'arduino_language_server',
        'clangd',
        'rust_analyzer',
        'lua_ls',
        'pyright'
      }
    })
  end
}

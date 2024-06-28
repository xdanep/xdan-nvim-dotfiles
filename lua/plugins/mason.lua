return {
  "williamboman/mason.nvim",
  config = true,
  opts = {
    ensure_installed = {
      "clangd",
      "rust_analyzer",
      "arduino_language_server",
      "lua_ls"
    }
  }
}

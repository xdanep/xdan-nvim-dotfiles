return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim",
  },

  config = function()
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

    local on_attach = function(client, bufnr)
      vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
      vim.keymap.set('n','K', vim.lsp.buf.hover, {buffer = bufnr})
    end

    require("neodev").setup()
    require("lspconfig").lua_ls.setup({
      on_attach = on_attach,
      settings = {
        Lua = {
          telemetry = { enable = false },
          workspace = { checkThirdParty = false },
        }
      }
    })

    require("lspconfig").clangd.setup {
      on_attach = function(client, bufnr)
        client.server_capabilities.sigantureHelpProvider = true
        on_attach(client,bufnr)
      end,
    }
    require("lspconfig").cmake.setup {}
    require("lspconfig").rust_analyzer.setup{
      on_attach = function(client, bufnr)
        client.server_capabilities.sigantureHelpProvider = false
        on_attach(client,bufnr)
      end,
      settings = {
        ['rust-analyzer'] = {
          diagnostics = {
            enable = false;
          }
        }
      }
    }
    require("lspconfig").pyright.setup{}
    require("lspconfig").dcmls.setup{}
    local MY_FQBN = "arduino:avr:uno"
    require("lspconfig").arduino_language_server.setup{
      capabilities = {
        textDocument = {
          semanticTokens = vim.NIL
        },
        workspace = {
          semanticTokens = vim.NIL
        }
      },
      cmd = {
        "arduino-language-server",
        "-cli-config" , "/home/xdanep/.arduino15/arduino-cli.yaml",
        "-cli"        , "/usr/bin/arduino-cli",
        "clangd"      , "/usr/bin/clangd",
        "-fqbn"       , MY_FQBN
      }
    }
  end
}

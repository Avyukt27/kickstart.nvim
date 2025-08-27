return {
  -- clangd = {},
  -- gopls = {},
  pyright = {
    on_attach = function(client, _)
      client.server_capabilities.hoverProvider = true
      client.server_capabilities.diagnosticProvider = false
      client.server_capabilities.documentFormattingProvider = false
      client.server_capabilities.codeActionProvider = false
    end,
    settings = {
      pyright = {
        disableOrganizeImports = true,
      },
      python = {
        analysis = {
          typeCheckingMode = 'strict',
        },
      },
    },
  },
  ruff = {
    on_attach = function(client, _)
      client.server_capabilities.hoverProvider = false
    end,
    init_options = {
      settings = {
        logLevel = 'debug',
      },
    },
  },
  -- rust_analyzer = {},
  -- ... etc. See `:help lspconfig-all` for a list of all the pre-configured LSPs
  --
  -- Some languages (like typescript) have entire language plugins that can be useful:
  --    https://github.com/pmizio/typescript-tools.nvim
  --
  -- But for many setups, the LSP (`ts_ls`) will work just fine
  -- ts_ls = {},
  --

  lua_ls = {
    -- cmd = { ... },
    -- filetypes = { ... },
    -- capabilities = {},
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
        -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
        -- diagnostics = { disable = { 'missing-fields' } },
      },
    },
  },
}

return {
  -- clangd = {},
  -- gopls = {},
  pyright = {
    settings = {
      python = {
        analysis = {
          typeCheckingMode = 'strict',
          autoSearchPairs = true,
          usLibraryCodeForTypes = true,
          diagnosticMode = 'workspace',
          diagnosticSeverityOverrides = {
            reportMissingImport = 'warning',
            reportUnusedImport = 'warning',
          },
          inlayHints = {
            variableTypes = true,
            functionReturnTypes = true,
          },
        },
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

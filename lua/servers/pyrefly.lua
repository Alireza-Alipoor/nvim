-- ================================================================================================
-- TITLE : pyrefly (Python Language Server) LSP Setup
-- LINKS :
--   > docs  : https://pyrefly.org
--   > github: https://github.com/facebook/pyrefly
-- ================================================================================================

--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @return nil This function doesn't return a value, it configures the LSP server
return function(capabilities)
  vim.lsp.config("pyrefly", {
    capabilities = capabilities,
    -- default CLI for the language server
    -- (this is exactly what the official docs recommend) :contentReference[oaicite:1]{index=1}
    cmd = { "pyrefly", "lsp" },

    -- Optional: always show type errors, even without pyrefly.toml
     init_options = {
       pyrefly = {
         displayTypeErrors = "force-on",
       },
     },
  })
end

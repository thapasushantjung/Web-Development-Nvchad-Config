local nvlsp = require "nvchad.configs.lspconfig"
nvlsp.defaults()

local servers = { "html", "cssls", "ts_ls", "tailwindcss", "eslint", "emmet_ls", "intelephense", "marksman" }

-- Use the new vim.lsp API to avoid deprecation warnings in Neovim 0.11+
for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })

  -- Try to enable the server. If Mason is still installing it, pcall will 
  -- prevent the 'failed to spawn' error from interrupting your work.
  pcall(vim.lsp.enable, lsp)
end

-- read :h vim.lsp.config for changing options of lsp servers 

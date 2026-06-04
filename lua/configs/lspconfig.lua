local nvlsp = require "nvchad.configs.lspconfig"
nvlsp.defaults()

local servers = { "html", "cssls", "ts_ls", "tailwindcss", "eslint", "emmet_ls", "intelephense", "marksman" }

local lsp_configs = {
  html = {
    filetypes = { "html", "php", "blade" },
  },
  emmet_ls = {
    filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "php", "blade" },
  },
  tailwindcss = {
    filetypes = { "html", "javascript", "typescript", "javascriptreact", "typescriptreact", "php", "blade" },
  },
}

-- Use the new vim.lsp API to avoid deprecation warnings in Neovim 0.11+
for _, lsp in ipairs(servers) do
  local config = {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }

  if lsp_configs[lsp] then
    config = vim.tbl_deep_extend("force", config, lsp_configs[lsp])
  end

  vim.lsp.config(lsp, config)

  -- Try to enable the server. If Mason is still installing it, pcall will 
  -- prevent the 'failed to spawn' error from interrupting your work.
  pcall(vim.lsp.enable, lsp)
end

-- read :h vim.lsp.config for changing options of lsp servers 

local lspconfig = require('lspconfig')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

-- 基础LSP配置
local on_attach = function(client, bufnr)
  -- 快捷键映射
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true})
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true})
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', {noremap = true})
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap = true})
end

-- 初始化mason
mason.setup()
mason_lspconfig.setup({
  ensure_installed = {
    'lua_ls',
    'pyright',
    'rust_analyzer',
    'clangd'
  },
  automatic_installation = true
})

-- 配置语言服务器
mason_lspconfig.setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      on_attach = on_attach,
      capabilities = require('cmp_nvim_lsp').default_capabilities()
    }
  end
}
require('lspconfig').marksman.setup{
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = {'markdown', 'md'}
}
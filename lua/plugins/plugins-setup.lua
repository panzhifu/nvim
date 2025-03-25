local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
)

require('lazy').setup({
  {
    'simrat39/rust-tools.nvim',
    dependencies = { 'neovim/nvim-lspconfig' },
    ft = 'rust',
    config = function()
      require('rust-tools').setup()
    end
  }
})
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({
  {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },
  "akinsho/bufferline.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "nvim-tree/nvim-web-devicons",
    "tanvirtin/monokai.nvim",
    -- 界面增强
    "nvim-tree/nvim-web-devicons",
    "nvim-lualine/lualine.nvim",
    { "nvim-telescope/telescope.nvim", branch = '0.1.x' },
    -- LSP套件
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    {
      'iamcco/markdown-preview.nvim',
      ft = 'markdown',
      build = 'cd app && yarn install'
    },
    {
      'jakewvincent/mkdnflow.nvim',
      ft = 'markdown',
      config = function()
        require('mkdnflow').setup()
      end
    },
    }
)

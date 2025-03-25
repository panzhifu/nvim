local dashboard = require('dashboard')

dashboard.setup{
  theme = 'doom',
  config = {
    header = {
      '███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
      '████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
      '██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
      '██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
      '██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
      '╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
    },
    center = {
      { icon = '  ', desc = '新建文件                          ', action = 'ene | startinsert' },
      { icon = '  ', desc = '搜索文件                          ', action = 'Telescope find_files' },
      { icon = '  ', desc = '配置管理                          ', action = 'NvimTreeToggle' }
    },
    footer = {'🚀 高效文本编辑从这里开始'}
  }
}

vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#A6E22E' })
vim.api.nvim_set_hl(0, 'DashboardIcon', { fg = '#66D9EF' })
vim.api.nvim_set_hl(0, 'DashboardDesc', { fg = '#F8F8F2' })
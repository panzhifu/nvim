vim.cmd([[colorscheme monokai_pro]])

-- 自定义界面元素配色
vim.api.nvim_set_hl(0, 'BufferLineFill', { bg = '#272822' })
vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = '#75715E', nocombine = true })
vim.api.nvim_set_hl(0, 'LualineModeNormal', { fg = '#A6E22E', bg = '#3E3D32' })
-- 仪表盘配色
vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#A6E22E' })
vim.api.nvim_set_hl(0, 'DashboardIcon', { fg = '#66D9EF' })
vim.api.nvim_set_hl(0, 'DashboardDesc', { fg = '#F8F8F2' })

-- 启用终端真色
vim.opt.termguicolors = true

-- Markdown语法高亮
vim.api.nvim_set_hl(0, 'MarkdownH1', { fg = '#F92672', bold = true })
vim.api.nvim_set_hl(0, 'MarkdownH2', { fg = '#FD971F', bold = true })
vim.api.nvim_set_hl(0, 'MarkdownLink', { fg = '#66D9EF', underline = true })
vim.api.nvim_set_hl(0, 'MarkdownCode', { fg = '#AE81FF' })
vim.api.nvim_set_hl(0, 'MarkdownCodeBlock', { bg = '#3E3D32' })

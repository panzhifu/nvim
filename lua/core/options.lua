-- 配置选项
-- date: 2025-03-25
-- author: 潘志福

-- 全局设置
local g = vim.g
local opt = vim.opt

-- 编码设置
vim.cmd "language en_US.UTF_8"

vim.cmd "syntax off"
g.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- 行号
opt.number = true
opt.relativenumber = true -- 显示相对行号

-- 缩进
opt.tabstop = 4 -- 制表符宽度
opt.shiftwidth = 4 -- 缩进宽度
opt.expandtab = true -- 使用空格代替制表符
opt.autoindent = true -- 自动缩进

-- 光标行
opt.cursorline = true -- 高亮当前行
opt.cursorcolumn = false -- 高亮当前列

-- 启用鼠标
opt.mouse = "a" -- 启用鼠标支持

-- 系统剪贴板
opt.clipboard = "unnamedplus" -- 启用系统剪贴板

-- 搜索
opt.ignorecase = true -- 忽略大小写
opt.smartcase = true -- 智能大小写

-- 自动读取设置
opt.autoread = true

-- 窗口分割设置
opt.splitbelow = true
opt.splitright = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"



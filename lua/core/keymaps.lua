vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 视觉模式 ---------- --
-- 当行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- --
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 仪表盘快捷键
keymap.set("n", "<Leader>d", ":Dashboard<CR>", { desc = "打开仪表盘" })

-- Markdown专用快捷键
keymap.set('n', '<leader>mp', ':MarkdownPreviewToggle<CR>', { desc = 'Markdown预览切换' })
keymap.set('n', '<leader>mh', ':lua require("mkdnflow").goto_header(1)<CR>', { desc = '跳转到一级标题' })
keymap.set('n', '<leader>ml', ':lua require("mkdnflow").create_link()<CR>', { desc = '创建Markdown链接' })

-- 代码格式化
keymap.set('n', '<leader>cf', ':lua vim.lsp.buf.format()<CR>', { desc = '格式化当前文件代码' })

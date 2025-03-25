vim.opt.termguicolors = true

require('bufferline').setup{
  options = {
    mode = "tabs",
    separator_style = "slant",
    always_show_bufferline = true,
    show_close_icon = true,
    color_icons = true,
    offsets = {
      {
        filetype = "NvimTree",
        text = "文件资源管理器",
        highlight = "Directory",
        text_align = "left"
      }
    }
  }
}
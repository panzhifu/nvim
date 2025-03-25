vim.opt.list = true
vim.opt.listchars:append({
    space = "⋅",
    tab = "» ",
    trail = "-",
})

require('indent_blankline').setup {
    char = "▏",
    show_trailing_blankline_indent = false,
    show_current_context = true,
    context_patterns = {
        "class", "function", "method", "block", "list_literal"
    }
}
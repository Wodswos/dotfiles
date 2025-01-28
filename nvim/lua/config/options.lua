local opt = vim.opt

-- Tab / Indention
-- python always take 4 space as indention
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
-- should i set this? in the situation like makefile, tab should not convert to space
-- opt.expandtab = true
opt.smartindent = true
-- 控制单行文本长度超出 window 时是否自动换行，默认为 true
-- opt.wrap = false

-- Search
opt.incsearch = true
-- 搜索时忽略大小写
opt.ignorecase = true
-- 如果包含大写字母，会自动切换回大小写敏感搜索
opt.smartcase = true

-- Appearance
-- 我能用得惯 relative 么，还是只用 numer?
-- opt.relativenumber = true
opt.number = true
-- 启用 RGB 真彩色
opt.termguicolors = true
-- 垂直颜色列，感觉不必设置
-- opt.colorcolumn = '100'
opt.signcolumn = 'yes'
opt.cmdheight = 1
-- opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect"

-- Behavior
opt.hidden = true
-- opt.errorbells = false
-- opt.swapfile = false
-- opt.backup = false
-- opt.undodir = vim.fn.expand('~/.vim/undodir')
-- opt.undofile = true
-- opt.backapace = "indent,eol,start"
-- opt.splitright = true
-- opt.splitbelow = true
opt.iskeyword:append("-")
-- a 表示开启所有模式下的鼠标支持 
opt.mouse:append('a')
opt.encoding = "UTF-8"

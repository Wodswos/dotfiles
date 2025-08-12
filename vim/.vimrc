"----------------------------------------------------------------"
"                      插件管理 (vim-plug)                      "
"----------------------------------------------------------------"
call plug#begin('~/.vim/plugged')

" 1. 外观与界面
Plug 'vim-airline/vim-airline'        " 状态栏
Plug 'vim-airline/vim-airline-themes' " 状态栏主题
Plug 'preservim/nerdtree'             " 文件浏览器
Plug 'ryanoasis/vim-devicons'         " 为 nerdtree 和 airline 添加图标

" 2. Python 开发核心
Plug 'neoclide/coc.nvim', {'branch': 'release'} " 语言服务器/自动补全引擎
Plug 'vim-python/python-syntax'                 " 增强的 Python 语法高亮

" 3. Git 集成
Plug 'tpope/vim-fugitive'

" 4. 便捷工具
Plug 'tpope/vim-surround'             " 快速添加/修改括号、引号等
Plug 'scrooloose/nerdcommenter'       " 快速注释代码

call plug#end()


"----------------------------------------------------------------"
"                        插件配置                              "
"----------------------------------------------------------------"

" --- NERDTree ---
" 使用 Ctrl+n 打开/关闭文件浏览器
nnoremap <C-n> :NERDTreeToggle<CR>

" --- coc.nvim (代码智能) ---
" 安装 coc.nvim 后，在 vim 中运行 :CocInstall coc-pyright 即可拥有完美的 Python 支持
" 使用 Tab 键进行补全
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" 使用 gd 跳转到定义
nmap <silent> gd <Plug>(coc-definition)
" 使用 gr 查看引用
nmap <silent> gr <Plug>(coc-references)


" --- NERDCommenter ---
" 使用 Ctrl+/ 快速注释
vmap <C-/> <plug>NERDCommenterToggle
nmap <C-/> <plug>NERDCommenterToggle


"----------------------------------------------------------------"
"                        通用Vim设置                             "
"----------------------------------------------------------------"
syntax on             " 开启语法高亮
set number            " 显示行号
set relativenumber    " 显示相对行号
set cursorline        " 高亮当前行
set encoding=utf-8    " 设置编码
set tabstop=4         " Tab 宽度为4个空格
set shiftwidth=4      " 自动缩进宽度
set expandtab         " 将 Tab 转换为空格
set smartindent       " 智能缩进
set hlsearch          " 高亮搜索结果
set incsearch         " 实时搜索
set ignorecase        " 搜索时忽略大小写
set smartcase         " 如果搜索词含大写，则不忽略大小写

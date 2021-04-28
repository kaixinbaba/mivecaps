source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/ftplugin/man.vim

" 设置 leader 键为空格
let mapleader="\ "

set nobackup
set undodir=~/.vim/undodir
set keywordprg=:Man

if !isdirectory($undodir)
    call mkdir(&undodir, 'p', 0700)
endif

if has('mouse')
    if has('gui_running') || (&term =~ 'xterm' && !has('mac'))
        set mouse=a
    else
        set mouse=nvi
    endif
endif
" vim-plug 配置
call plug#begin('~/.vim/plugged')
" NERDTree 文件树
Plug 'scrooloose/nerdtree'
" 快速成对输入括号引号
Plug 'tpope/vim-surround'
" 欢迎首页
Plug 'mhinz/vim-startify'
" 状态栏
Plug 'vim-airline/vim-airline'
" 状态栏样式
Plug 'vim-airline/vim-airline-themes'
" 整体样式
Plug 'kristijanhusak/vim-hybrid-material'
" 快速定位文字
Plug 'easymotion/vim-easymotion'
" 快速寻找文件
Plug 'ctrlpvim/ctrlp.vim'
" 浏览代码结构大纲
Plug 'majutsushi/tagbar'
" 文件模糊匹配
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" 文本批量替换
Plug 'brooth/far.vim'
" Python IDE
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Rust IDE
Plug 'rust-lang/rust.vim'
" Initialize plugin system
call plug#end()

" 各种插件参数的定义
" 使indentline生效
let g:indentLine_enabled = 1
" 定义不同的缩进等级对应的字符
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_defaultGroup = 'SpecialKey'
let g:airline_theme = "hybrid"
" ctrlp 默认快捷键映射
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let NERDTreeShowHidden=1
let NERDTreeIgnore = [
    \ '\.git$', 
    \ '\.DS_Store$',
    \ '\.pyc$',
    \ '\.pyo$',
    \ '\.swp$',
    \ '\.idea$',
    \ ]
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" Rust 文件保存的时候自动格式化
let g:rustfmt_autosave = 1
" python-mode
let g:pymode_python = 'python'
let g:pymode_trim_whitespaces = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_rope_goto_definition_bind = '<C-]>'
let g:pymode_options_max_line_length = 120



" 一个 tab 等于 4 个空格
set tabstop=4
set softtabstop=4
set shiftwidth=4
" 将一个 tab 换成对应的空格
set expandtab
" 换行时自动锁进
set autoindent
" 滚动设置不会上下留白
set scrolloff=0
" 启用语法高亮
syntax enable
set background=dark
" 使用 hybrid 的样式
colorscheme hybrid_material
filetype plugin indent on

" 自定义快捷键
" 窗口切换直接使用 CRTL + HJKL
nnoremap <C-H>  <C-W>h
nnoremap <C-J>  <C-W>j
nnoremap <C-K>  <C-W>k
nnoremap <C-L>  <C-W>l
" 关闭当前窗口
nnoremap <C-C>  <C-W>c
" 关闭当前窗口以外的其他窗口
nnoremap <C-O>  <C-W>o
" 打开终端
nnoremap <C-T>  :term<CR>
" 隐藏终端
nnoremap <C-H>  <C-W> :hide<CR>
" 停止搜索结果高亮 F2
nnoremap <silent> <F2> :nohlsearch<CR>
inoremap <silent> <F2> <C-O>:nohlsearch<CR>
" tagbar leader + t
nnoremap <leader>t :TagbarToggle<CR>
inoremap <leader>t <C-O>:TagbarToggle<CR>
" NERDTree
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
" vim-easymotion
nmap <leader>s <Plug>(easymotion-s2)

"================================Janmeon==============================


"------
" Chen
" Joy may be end in Grief!
" Janemon2331@gmail.com
"--------- 

" NOTE: 大标题内容区的前后间隔是, 前2后2. 一行命令间隔是1, 多行则是2.



"==========================================
" 全局设置
"=========================================


" 修改leader键
let mapleader = ','

" 随时保存
:set updatetime=500
"autocmd CursorHold,CursorHoldI * update
autocmd CursorHold * update

" 保存设置，使其生效
:nnoremap <leader>ov :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" 开启语法高亮
syntax on
" 检测文件类型
filetype on
" 针对不同的文件类型采用不同的缩进格式
filetype indent on
" 允许插件
filetype plugin on
" 启动自动补全
filetype plugin indent on
" 启动的时候不显示那个援助乌干达儿童的提示
set shortmess=atI


" 备份,到另一个位置. 防止误删, 目前是取消备份
"set backup
"set backupext=.bak
"set backupdir=/tmp/vimbk/
" 取消备份。 视情况自己改
set nobackup
" 关闭交换文件
set noswapfile
" 忽略特定格式的文件
set wildignore=*.swp,*.bak,*.pyc,*.class,.svn


" 突出显示当前列
set cursorcolumn
" 突出显示当前行
set cursorline
" change the terminal's title
set title

" 显示当前的行号列号
set ruler
" 在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
set showmode
" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7
" 显示行号
set number
" 取消换行
"set nowrap

" 命令行（在状态行下）的高度，默认为1，这里是2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" Always show the status line - use 2 lines for the status bar
set laststatus=2

" 设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制, 不需要可以去掉
" 好处：误删什么的，如果以前屏幕打开，可以找回
set t_ti= t_te=


" 鼠标暂不启用, 键盘党....
"set mouse-=a
" 启用鼠标
 set mouse=a
" Hide the mouse cursor while typing
"set mousehide


" 去掉输入错误的提示声音
set novisualbell
set noerrorbells
set t_vb=
set tm=500

" Remember info about open buffers on close
set viminfo^=%

" For regular expressions turn magic on
set magic

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" 一个自我注解
:iabbrev @@ \"-----<cr>\"Chen<cr>\"Joy may be end in Grief!<cr>\"janemon2331@gmail.com<cr>---------


" rename the file
:command! -nargs=1 Rn let tpname = expand('%:t') | saveas <args> | edit <args> | call delete(expand(tpname))
 
" 块注释
:nnoremap <leader>zs i/*<cr> *<cr>*<cr>*<cr>*<cr>*/<esc>kkkkka =========<esc>jja ---------<esc>ka 



" 设置新文件的编码为 utf-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
"set langmenu=zh_CN.UTF-8
"set enc=2byte-gb18030
" 下面这句只影响普通模式 (非图形界面) 下的 Vim
set termencoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m
" 合并两行中文时，不在中间加空格
set formatoptions+=B



" 自动补全配置
" 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu

" 增强模式中的命令行自动完成操作
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class

" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif


" 关闭方向键, 强迫自己用 hjkl
map <Left> <Nop>
map <Right> <Nop>
"map <Up> <Nop>
"map <Down> <Nop>

" F1 废弃这个键,防止调出系统帮助
" I can type :help on my own, thanks.  Protect your fat fingers from the evils of <F1>
noremap <F1> <Esc>"



"======================================================
"  文字编辑
"=====================================================


" automatally refresh content whent other editor edit the content of current
" file
set autoread
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime

" correct the word and we should know that it work after we keystrok whiteSpace.
:iabbrev teh the

" 调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv

"  
nnoremap <C-j> <C-D>


" 给一个单词加上双引号及加重一个单词
:nnoremap <leader>" bi"<esc>ea"<esc>
:nnoremap <leader>b bi**<esc>ea**<esc>

" 更加顺手的粘贴复制
:vnoremap <C-y> "+y
:nnoremap <C-p> "+p
:vnoremap <C-p> "+p
:vnoremap <C-x> "+d

" tab相关变更
" 设置Tab键的宽度        [等同的空格个数]
set tabstop=4
" 每一次缩进对应的空格数
set shiftwidth=4
" 按退格键时可以一次删掉 4 个空格
set softtabstop=4
" insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空格
set smarttab
" 将Tab自动转化成空格[需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set expandtab
" 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" 选择及取消高亮
:nnoremap <C-a> <esc>ggvG$ " this is select all in "v-module".
:nnoremap <S-h> viw
:nnoremap <S-l> :nohls<cr>

" 在 i modle右退一格
:inoremap <leader>l <esc>la
" 退出 i model 和 v model
:inoremap jk <esc>
:inoremap <esc> <nop>
:vnoremap jk <esc>
:vnoremap <esc> <nop>
" 行首及行尾
:nnoremap HH 0
:nnoremap LL $
:vnoremap HH 0
:vnoremap LL $

" 遮盖内容(加密)
:nnoremap <Leader>zf ggVGg?

" 找括号 ) 和 >
:inoremap ,, <esc>f)a
:inoremap ,,, <esc>f>a
:nnoremap ,, <esc>f)a
:nnoremap ,,, <esc>f>a

" 删除一个单词和修改一格单词
:nnoremap dw daw
:nnoremap cw caw

" this is just fit to some wolds file. 不知道作用
:nnoremap  yl T.yf.
:nnoremap  dl T.df.

" quit without save (不过在随时保存的时候，好像没什么用）
:nnoremap zz :q<CR>

"delete the <tags>. Special the html.
:nnoremap dm F<vf>df<vf>d
"make a parir marks
:inoremap <leader>k <esc>F<vf>yf>pF<a/<esc>hi

" this is operator_motion mapping
" this means delete all parameters in parentness.
:onoremap p i(
" delete to 'return'
":onoremap tr /return<cr>
:onoremap np :<c-u>normal! f(vi(<cr>
" this is somewhat difficult to understand, but it's function is locate

" delete content in double quoto
:nnoremap d' F"lvf"hdi

" 交换 ' `, 使得可以快速使用'跳到marked位置
nnoremap ' `
nnoremap ` '

" remap U to <C-r> for easier redo
nnoremap U <C-r>

" 括号配对情况, 跳转并高亮一下匹配的括号
set showmatch
" How many tenths of a second to blink when matching brackets
set matchtime=2

" 设置文内智能搜索提示
" 高亮search命中的文本
set hlsearch
" 打开增量搜索模式,随着键入即时搜索
set incsearch
" 搜索时忽略大小写
set ignorecase
" 有一个或以上大写字母时仍大小写敏感
set smartcase


" 代码折叠
set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
set foldmethod=indent
set foldlevel=99


" 缩进配置
" Smart indent
set smartindent
" 打开自动缩进
" never add copyindent, case error   " copy the previous indentation on autoindenting
set autoindent


" 相对行号: 行号变成相对，可以用 nj/nk 进行跳转
set relativenumber number
au FocusLost * :set norelativenumber number
au FocusGained * :set relativenumber
" 插入模式下用绝对行号, 普通模式下用相对
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber


" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
" quickfix window  s/v to open in split window,  ,gd/,jd => quickfix window => open it
autocmd BufReadPost quickfix nnoremap <buffer> v <C-w><Enter><C-w>L
autocmd BufReadPost quickfix nnoremap <buffer> s <C-w><Enter><C-w>K


" Keep search pattern at the center of the screen.
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" 去掉搜索高亮
noremap <silent><leader>/ :nohls<CR>

" for # indent, python文件中输入新行时#号注释不切回行首
autocmd BufNewFile,BufRead *.py inoremap # X<c-h>#


" 具体编辑文件类型的一般设置，比如不要 tab 等
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
autocmd FileType ruby,javascript,html,css,xml set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
autocmd BufRead,BufNewFile *.md,*.mkd,*.markdown set filetype=markdown.mkd
autocmd BufRead,BufNewFile *.part set filetype=html
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai

" disable showmatch when use > in php
au BufWinEnter *.php set mps-=<:>


" 保存python文件时删除多余空格
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()


" 定义函数AutoSetFileHead，自动插入文件头
autocmd BufNewFile *.sh,*.py exec ":call AutoSetFileHead()"
function! AutoSetFileHead()
  "如果文件类型为.sh文件
  if &filetype == 'sh'
      call setline(1, "\#!/bin/bash")
  endif

  "如果文件类型为python
  if &filetype == 'python'
      " call setline(1, "\#!/usr/bin/env python")
      " call append(1, "\# encoding: utf-8")
      call setline(1, "\# -*- coding: utf-8 -*-")
  endif

  normal G
  normal o
  normal o
endfunc


" 设置可以高亮的关键字
if has("autocmd")
" Highlight TODO, FIXME, NOTE, etc.
if v:version > 701
  autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|DONE\|XXX\|BUG\|HACK\)')
  autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
endif
endif


" this is auto cmd
:augroup MY
:autocmd!
:autocmd FileType javascript nnoremap <leader>c 0i//<esc>
:autocmd FileType html inoremap <leader>c <!----><esc>F-;i
:autocmd FileType html nnoremap d> F>lvf<hdh
:autocmd FileType * vnoremap <leader>cc di*/<esc>hi/*<esc>""p
"  :autocmd BufWrite,BufRead *.html :normal gg=G
:autocmd bufwrite * :echom "writing buffer"
:augroup END



"=====================================================
" 窗口选项卡
"====================================================


" 同步html页面
:nnoremap <S-P> :!google-chrome %<CR>

" 打开目录树
:nnoremap <leader>t :NERDTreeToggle %<CR>

" 使用方向键切换buffer
noremap <left> :bp<CR>
noremap <right> :bn<CR>

" A buffer becomes hidden when it is abandoned
set hidden
set wildmode=list:longest
set ttyfast

" command-line window
autocmd CmdwinEnter * nnoremap <buffer> <CR> <CR>

" 打开自动定位到最后编辑的位置, 需要确认 .viminfo 当前用户可写
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" http://stackoverflow.com/questions/13194428/is-better-way-to-zoom-windows-in-vim-than-zoomwin
" Zoom / Restore window.
function! s:ZoomToggle() abort
  if exists('t:zoomed') && t:zoomed
      execute t:zoom_winrestcmd
      let t:zoomed = 0
  else
      let t:zoom_winrestcmd = winrestcmd()
      resize
      vertical resize
      let t:zoomed = 1
  endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <Leader>z :ZoomToggle<CR>


" 分屏窗口移动, Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" 命令行模式增强，ctrl - a到行首， -e 到行尾
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" tab切换
map <leader>ht :tabfirst<cr>
map <leader>lt :tablast<cr>
"map <leader>jt :tabnext<cr>
"map <leader>kt :tabprev<cr>
nnoremap <Up> :tabprev<cr>
nnoremap <Down> :tabnext<cr>

" Toggles between the active and last active tab "
" The first tab is always 1 "
let g:last_active_tab = 1
nnoremap <silent> <leader>tt :execute 'tabnext ' . g:last_active_tab<cr>
autocmd TabLeave * let g:last_active_tab = tabpagenr()

" 新建tab  Ctrl+t
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>


"========================================================
" Theme主题设置
"========================================================

" Set extra options when running in GUI mode
if has("gui_running")
  set guifont=Monaco:h14
  if has("gui_gtk2")   "GTK2
      set guifont=Monaco\ 12,Monospace\ 12
  endif
  set guioptions-=T
  set guioptions+=e
  set guioptions-=r
  set guioptions-=L
  set guitablabel=%M\ %t
  set showtabline=1
  set linespace=2
  set noimd
  set t_Co=256
endif

" theme主题
set background=dark
set t_Co=256
colorscheme inkpot

" 设置标记一列的背景颜色和数字一行颜色一致
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

" for error highlight，防止错误整行标红导致看不清
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline



"================================JanemonFinish========================



"===============================Plugin================================

" install bundles
"if filereadable(expand("~/.vimrc.bundles"))
""  source ~/.vimrc.bundles
"elseif filereadable(expand("~/.config/nvim/vimrc.bundles")) " neovim
""  source ~/.config/nvim/vimrc.bundles
"endif

" ensure ftdetect et al work by including this after the bundle stuff
"filetype plugin indent on

"==============================Plugin================================



" ==========================================
" bundle 插件管理和配置项
" ==========================================


" ################### 包依赖 #####################
" package dependence:  ctags, ag(he_silver_searcher)
" python dependence:   pep8, pyflake

" 非兼容vi模式。去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible
filetype off " required! turn off

" ################### 插件管理 ###################

" inspired by spf13, 自定义需要的插件集合
if !exists('g:bundle_groups')
    " let g:bundle_groups=['python', 'javascript', 'golang', 'php', 'ruby', 'shell', 'markdown', 'html', 'css', 'less', 'coffeescript', 'tmux', 'json', 'beta']
    let g:bundle_groups=['python', 'javascript', 'markdown', 'html', 'css', 'tmux', 'beta']
endif

" ----------------------------------------------------------------------------
" 使用 vim-plug 管理插件
" vim plugin bundle control, command model
" ----------------------------------------------------------------------------

call plug#begin('~/.vim/bundle')

" 移动光标到插件名上, 使用'#'快速跳转到每个插件的配置处

" syntastic
if v:version < 800
    Plug 'scrooloose/syntastic'
else
    Plug 'w0rp/ale'
endif

" CSS3 高亮，包括stylus,Less,Sass
Plug 'hail2u/vim-css3-syntax'

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'

" Group dependencies, vim-snippets depends on ultisnips
" 代码片段快速插入 (snippets中,是代码片段资源,需要学习)
" Snippets are separated from the engine. Add this if you want them:
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" auto complete
" 代码自动补全
" 迄今为止用到的最好的自动VIM自动补全插件
" 重启 :YcmRestartServer
Plug 'Valloric/YouCompleteMe'
" 自动补全单引号，双引号等
Plug 'Raimondi/delimitMate'
" 自动补全html/xml标签
Plug 'docunext/closetag.vim', { 'for': ['html', 'xml'] }

" quick edit
" 快速注释
Plug 'scrooloose/nerdcommenter'


" 快速加入修改环绕字符
" for repeat -> enhance surround.vim, . to repeat command
Plug 'tpope/vim-repeat' | Plug 'tpope/vim-surround'
" trailingwhitespace
" 快速去行尾空格 [, + <Space>]
Plug 'bronson/vim-trailing-whitespace'
" easyalign
" 快速赋值语句对齐
Plug 'junegunn/vim-easy-align'

" quick movement
" easymotion
"更高效的移动 [,, + w/fx/h/j/k/l]
Plug 'Lokaltog/vim-easymotion'

" 更高效的行内移动, f/F/t/T, 才触发
" quickscope
Plug 'unblevable/quick-scope'

Plug 'vim-scripts/matchit.zip'
" signature
" 显示marks - 方便自己进行标记和跳转
" m[a-zA-Z] add mark
" '[a-zA-Z] go to mark
" m<Space>  del all marks
" m/        list all marks
" m.        add new mark just follow previous mark
Plug 'kshenoy/vim-signature'

" quick selection and edit
" expandregion
" 选中区块
Plug 'terryma/vim-expand-region'
" 多光标选中编辑
" multiplecursors
Plug 'terryma/vim-multiple-cursors'

" quick locate file or function
" 文件搜索
" change to https://github.com/ctrlpvim/ctrlp.vim
" ctrlp ctrlpfunky
Plug 'ctrlpvim/ctrlp.vim' | Plug 'tacahiroy/ctrlp-funky'
    let g:ctrlp_map = '<leader>f'
    let g:ctrlp_cmd = 'CtrlP'
    map <leader>fb :CtrlPMRU<CR>
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
        \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
        \ }
    let g:ctrlp_working_path_mode=0
    let g:ctrlp_match_window_bottom=1
    let g:ctrlp_max_height=15
    let g:ctrlp_match_window_reversed=0
    let g:ctrlp_mruf_max=500
    let g:ctrlp_follow_symlinks=1

" ctrlsf
" 类似sublimetext的搜索
" In CtrlSF window:
" 回车/o, 打开
" t       在tab中打开(建议)
" T - Lkie t but focus CtrlSF window instead of opened new tab.
" q - Quit CtrlSF window.
Plug 'dyng/ctrlsf.vim'
" incsearch
" Plug 'haya14busa/incsearch.vim'
" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)

" quick run
" quickrun
Plug 'thinca/vim-quickrun'

" git
" fugitive
Plug 'tpope/vim-fugitive'
" gitgutter
Plug 'airblade/vim-gitgutter'

" gundo
" edit history, 可以查看回到某个历史状态
Plug 'sjl/gundo.vim'

" view
" airline
" 状态栏增强展示
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" rainbow_parentheses
" 括号显示增强
" rainbow-pareness settings
Plug 'kien/rainbow_parentheses.vim'
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle


" nav
" nerdtree nerdtreetabs
Plug 'scrooloose/nerdtree' | Plug 'jistr/vim-nerdtree-tabs'
" ctrlspace
Plug 'vim-ctrlspace/vim-ctrlspace'
" tagbar
Plug 'majutsushi/tagbar'

" text object
" 支持自定义文本对象
Plug 'kana/vim-textobj-user'
" 增加行文本对象: l   dal yal cil
Plug 'kana/vim-textobj-line'
" 增加文件文本对象: e   dae yae cie
Plug 'kana/vim-textobj-entire'
" 增加缩进文本对象: i   dai yai cii - 相同缩进属于同一块
Plug 'kana/vim-textobj-indent'

if count(g:bundle_groups, 'tmux')
    " tmux
    " For tmux navigator Ctrl-hjkl
    Plug 'christoomey/vim-tmux-navigator'
endif

if count(g:bundle_groups, 'markdown')
    Plug 'plasticboy/vim-markdown', {'for': 'md'}
    " https://github.com/suan/vim-instant-markdown
    " npm -g install instant-markdown-d
    " Plug 'suan/vim-instant-markdown'
    " let g:instant_markdown_slow = 1
    " let g:instant_markdown_autostart = 0
    " map <F12> :InstantMarkdownPreview<CR>
endif

if count(g:bundle_groups, 'golang')
    " 1. vim a.go
    " 2. :GoInstallBinaries
    " vimgo  https://github.com/fatih/vim-go
    Plug 'fatih/vim-go', {'for': 'go'}
endif


if count(g:bundle_groups, 'python')
    " for python.vim syntax highlight
    " pythonsyntax
    Plug 'hdima/python-syntax'
    Plug 'hynek/vim-python-pep8-indent'
    Plug 'Glench/Vim-Jinja2-Syntax'

    " isort  https://github.com/timothycrosley/isort#readme + https://github.com/fisadev/vim-isort#installation
    " pip install isort
    Plug 'fisadev/vim-isort'
    " Shift-V 上下选中, ctrl + i 规范化
    let g:vim_isort_map = '<C-i>'
endif

if count(g:bundle_groups, 'php')
    " piv
    " shift-v可以查看函数手册 / leader-pd生成注释
    Plug 'spf13/PIV'
endif

if count(g:bundle_groups, 'ruby')
    Plug 'vim-ruby/vim-ruby'
    Plug 'tpope/vim-rails'
    " dir / dar
    Plug 'nelstrom/vim-textobj-rubyblock'

    " 有bug, 和当前有冲突, 尚未解决, 不要打开 => TODO: solve this problem
    " Plug 'tpope/vim-endwise'
endif

if count(g:bundle_groups, 'javascript')
    " javascript
    " 注意: syntax这个插件要放前面
    Plug 'othree/yajs.vim' | Plug 'pangloss/vim-javascript'
    let g:javascript_plugin_jsdoc = 1
    let g:javascript_plugin_ngdoc = 1
    let g:javascript_plugin_flow = 1
    let javascript_enable_domhtmlcss = 1
    augroup javascript_folding
        au!
        au FileType javascript setlocal foldmethod=syntax
    augroup END

    let g:javascript_conceal_function             = "ƒ"
    let g:javascript_conceal_null                 = "ø"
    let g:javascript_conceal_this                 = "@"
    let g:javascript_conceal_return               = "⇚"
    let g:javascript_conceal_undefined            = "¿"
    let g:javascript_conceal_NaN                  = "ℕ"
    let g:javascript_conceal_prototype            = "¶"
    let g:javascript_conceal_static               = "•"
    let g:javascript_conceal_super                = "Ω"
    let g:javascript_conceal_arrow_function       = "⇒"
    let g:javascript_conceal_noarg_arrow_function = "🞅"
    let g:javascript_conceal_underscore_arrow_function = "🞅"


    " TODO: jquery? for, remove or keep
    Plug 'othree/javascript-libraries-syntax.vim'
    let g:used_javascript_libs = 'jquery,underscore,backbone'

    " for javascript 自动补全, 配合YCM, 需要安装全局环境的（非nvm中) node.js&npm
    " 安装完成后还需要在 bundle/tern_for_vim 下执行 npm install 安装依赖 `cd ~/.vim/bundle/tern_for_vim && npm install`
    " see https://github.com/marijnh/tern_for_vim
    " Plug 'marijnh/tern_for_vim', {'do': 'npm install'}
endif


if count(g:bundle_groups, 'coffeescript')
    Plug 'kchmck/vim-coffee-script'
endif

" if count(g:bundle_groups, 'shell')
    " Plug 'Shougo/vimshell.vim'
" endif

if count(g:bundle_groups, 'json')
    " json
    Plug 'elzr/vim-json', {'for': 'json'}
endif

if count(g:bundle_groups, 'css')
    " css
    " not work in iterm2 which termianl selection is not xterm-256, and it slow
    " Plug 'ap/vim-css-color'

    " 这个有坑, see issue https://github.com/wklken/k-vim/issues/49
    " Plug 'gorodinskiy/vim-coloresque'
    " Plug 'lilydjwg/colorizer'
endif

if count(g:bundle_groups, 'less')
    " ###### vim.less : less 自动更新##########
    Plug 'groenewege/vim-less'
    " autocmd BufWritePost *.less :!lessc % > %:p:r.css
endif

if count(g:bundle_groups, 'html')
    " ###### emmet HTML complete #########
     Plug 'mattn/emmet-vim'
     let g:user_emmet_leader_key='<C-k>' " html:5<c-k>, make a default template."
endif

" this is just for beta version
if count(g:bundle_groups, 'beta')
    " indent
    Plug 'nathanaelkane/vim-indent-guides'
    " <leader>ig to trigger
    let g:indent_guides_start_level = 2
    let g:indent_guides_guide_size = 1
    let g:indent_guides_auto_colors = 1
    " autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
    " autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=black

    " Plug 'robbles/logstash.vim'
    " Plug 'ryanoasis/vim-devicons'
    " Plug 'ekalinin/dockerfile.vim'

    " Plug 'ConradIrwin/vim-bracketed-paste'
    " Plug 'roxma/vim-paste-easy'


endif

" Add plugins to &runtimepath
call plug#end()


" ################### 基础 ######################

" syntastic {{{
if has_key(g:plugs, 'syntastic')
    " dependence
    " 1. shellcheck `brew install shellcheck` https://github.com/koalaman/shellcheck

    let g:syntastic_error_symbol='>>'
    let g:syntastic_warning_symbol='>'
    let g:syntastic_check_on_open=1
    let g:syntastic_check_on_wq=0
    let g:syntastic_enable_highlighting=1

    " checkers
    " python
    " pip install flake8
    let g:syntastic_python_checkers=['flake8', ] " 使用pyflakes,速度比pylint快
    let g:syntastic_python_flake8_options='--ignore=E501,E225,E124,E712,E116,E131'

    " javascript
    " let g:syntastic_javascript_checkers = ['jsl', 'jshint']
    " let g:syntastic_html_checkers=['tidy', 'jshint']
    " npm install -g eslint eslint-plugin-standard eslint-plugin-promise eslint-config-standard
    " npm install -g eslint-plugin-import eslint-plugin-node eslint-plugin-html babel-eslint
    let g:syntastic_javascript_checkers = ['eslint']

    " to see error location list
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_enable_signs = 1
    let g:syntastic_auto_loc_list = 0
    let g:syntastic_auto_jump = 0
    let g:syntastic_loc_list_height = 5

    function! ToggleErrors()
        let old_last_winnr = winnr('$')
        lclose
        if old_last_winnr == winnr('$')
            " Nothing was closed, open syntastic_error location panel
            Errors
        endif
    endfunction
    nnoremap <Leader>s :call ToggleErrors()<cr>

    " ,en ,ep to jump between errors
    function! <SID>LocationPrevious()
    try
        lprev
    catch /^Vim\%((\a\+)\)\=:E553/
        llast
    endtry
    endfunction

    function! <SID>LocationNext()
    try
        lnext
    catch /^Vim\%((\a\+)\)\=:E553/
        lfirst
    endtry
    endfunction

    nnoremap <silent> <Plug>LocationPrevious    :<C-u>exe 'call <SID>LocationPrevious()'<CR>
    nnoremap <silent> <Plug>LocationNext        :<C-u>exe 'call <SID>LocationNext()'<CR>
    nmap <silent> <Leader>ep    <Plug>LocationPrevious
    nmap <silent> <Leader>en    <Plug>LocationNext

    " 修改高亮的背景色, 适应主题
    highlight SyntasticErrorSign guifg=white guibg=black

    " 禁止插件检查java
    " thanks to @marsqing, see https://github.com/wklken/k-vim/issues/164
    let g:syntastic_mode_map = {'mode': 'active', 'passive_filetypes': ['java'] }

    " 关闭syntastic语法检查, 鼠标复制代码时用到, 防止把错误标志给复制了
    nnoremap <silent> <Leader>ec :SyntasticToggleMode<CR>
endif
" }}}


" ale {{{
if has_key(g:plugs, 'ale')
    " pip install flake8
    " npm install -g eslint eslint-plugin-standard eslint-plugin-promise eslint-config-standard
    " npm install -g eslint-plugin-import eslint-plugin-node eslint-plugin-html babel-eslint
    let g:ale_linters = {
    \   'python': ['flake8'],
    \   'javascript': ['eslint'],
    \}

    " E501 -> 120 chars
    let g:ale_python_flake8_args="--ignore=E114,E116,E131 --max-line-length=120"
    " --ignore=E225,E124,E712,E116

    let g:ale_sign_error = '>>'
    let g:ale_sign_warning = '>'

    let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
    let g:ale_echo_msg_error_str = 'E'
    let g:ale_echo_msg_warning_str = 'W'
    let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

    nmap <silent> <Leader>ep <Plug>(ale_previous_wrap)
    nmap <silent> <Leader>en <Plug>(ale_next_wrap)

    nnoremap <silent> <Leader>ec :ALEToggle<CR>

    " troggle quickfix list
    function! ToggleErrors()
        let old_last_winnr = winnr('$')
        lclose
        if old_last_winnr == winnr('$')
            " Nothing was closed, open syntastic_error location panel
            lopen
        endif
    endfunction
    nnoremap <Leader>s :call ToggleErrors()<cr>

    let g:ale_set_highlights = 1
    highlight clear ALEErrorSign
    highlight clear ALEWarningSign
endif

" }}}

" ################### 自动补全 ###################

" YouCompleteMe {{{
    "youcompleteme  默认tab  s-tab 和自动补全冲突
    let g:ycm_key_list_select_completion=['<c-n>']
    "let g:ycm_key_list_select_completion = ['<Down>']
    let g:ycm_key_list_previous_completion=['<c-p>']
    "let g:ycm_key_list_previous_completion = ['<Up>']
    let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
    let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
    let g:ycm_use_ultisnips_completer = 1 "提示UltiSnips
    let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
    let g:ycm_collect_identifiers_from_tags_files = 1
    " 开启语法关键字补全
    let g:ycm_seed_identifiers_with_syntax=1
    " 回车作为选中
    let g:ycm_key_list_stop_completion = ['<CR>']

    "let g:ycm_seed_identifiers_with_syntax=1   "语言关键字补全, 不过python关键字都很短，所以，需要的自己打开

    " 跳转到定义处, 分屏打开
    let g:ycm_goto_buffer_command = 'horizontal-split'
    let g:ycm_register_as_syntastic_checker = 0
    " nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
    nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
    nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>

    " 引入，可以补全系统，以及python的第三方包 针对新老版本YCM做了兼容
    " old version
    if !empty(glob("~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"))
        let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
    endif
    " new version
    if !empty(glob("~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"))
        let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
    endif

    " 直接触发自动补全 insert模式下
    " let g:ycm_key_invoke_completion = '<C-Space>'
    " 黑名单,不启用
    let g:ycm_filetype_blacklist = {
        \ 'tagbar' : 1,
        \ 'gitcommit' : 1,
        \}
" }}}


" ultisnips {{{
    let g:UltiSnipsExpandTrigger       = "<tab>"
    let g:UltiSnipsJumpForwardTrigger  = "<tab>"
    let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
    let g:UltiSnipsSnippetDirectories  = ['UltiSnips']
    let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
    " 定义存放代码片段的文件夹 .vim/UltiSnips下，使用自定义和默认的，将会的到全局，有冲突的会提示
    " 进入对应filetype的snippets进行编辑
    map <leader>us :UltiSnipsEdit<CR>

    " ctrl+j/k 进行选择
    func! g:JInYCM()
        if pumvisible()
            return "\<C-n>"
        else
            return "\<c-j>"
        endif
    endfunction

    func! g:KInYCM()
        if pumvisible()
            return "\<C-p>"
        else
            return "\<c-k>"
        endif
    endfunction
    inoremap <c-j> <c-r>=g:JInYCM()<cr>
    au BufEnter,BufRead * exec "inoremap <silent> " . g:UltiSnipsJumpBackwordTrigger . " <C-R>=g:KInYCM()<cr>"
    let g:UltiSnipsJumpBackwordTrigger = "<c-k>"
" }}}


" delimitMate {{{
    " for python docstring ",优化输入
    au FileType python let b:delimitMate_nesting_quotes = ['"']
    au FileType php let delimitMate_matchpairs = "(:),[:],{:}"
    " 关闭某些类型文件的自动补全
    "au FileType mail let b:delimitMate_autoclose = 0
" }}}


" closetag {{{
    let g:closetag_html_style=1
" }}}

" ################### 快速编码 ###################

" nerdcommenter {{{
    let g:NERDSpaceDelims=1
    let g:NERDAltDelims_python = 1
" }}}

" trailingwhitespace {{{
    map <leader><space> :FixWhitespace<cr>
" }}}

" easyalign {{{
    vmap <Leader>a <Plug>(EasyAlign)
    nmap <Leader>a <Plug>(EasyAlign)
    if !exists('g:easy_align_delimiters')
    let g:easy_align_delimiters = {}
    endif
    let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }
    " Default:
    " If a delimiter is in a highlight group whose name matches any of the followings, it will be ignored.
    let g:easy_align_ignore_groups = ['Comment', 'String']
" }}}

" ################### 快速移动 ###################

" easymotion {{{
    let g:EasyMotion_smartcase = 1
    "let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
    map <Leader><leader>h <Plug>(easymotion-linebackward)
    map <Leader><Leader>j <Plug>(easymotion-j)
    map <Leader><Leader>k <Plug>(easymotion-k)
    map <Leader><leader>l <Plug>(easymotion-lineforward)
    " 重复上一次操作, 类似repeat插件, 很强大
    map <Leader><leader>. <Plug>(easymotion-repeat)
" }}}


" quickscope {{{
    let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
    " macvim/gvim会有问题, 暂时注解
    " let g:qs_first_occurrence_highlight_color = '#afff5f' " gui vim
    " let g:qs_first_occurrence_highlight_color = 155       " terminal vim
    " let g:qs_second_occurrence_highlight_color = '#5fffff'  " gui vim
    " let g:qs_second_occurrence_highlight_color = 81         " terminal vim
" }}}

" ################### 快速选中 ###################

" expandregion {{{
    " map + <Plug>(expand_region_expand)
    " map _ <Plug>(expand_region_shrink)
    vmap v <Plug>(expand_region_expand)
    vmap V <Plug>(expand_region_shrink)
    " Extend the global default
    if exists("*expand_region#custom_text_objects")
        call expand_region#custom_text_objects({
        \ 'a]' :1,
        \ 'ab' :1,
        \ 'aB' :1,
        \ 'ii' :0,
        \ 'ai' :0,
        \ })
    endif

" }}}

" multiplecursors {{{
    let g:multi_cursor_use_default_mapping=0
    " Default mapping
    let g:multi_cursor_next_key='<C-m>'
    let g:multi_cursor_prev_key='<C-p>'
    let g:multi_cursor_skip_key='<C-x>'
    let g:multi_cursor_quit_key='<Esc>'
" }}}

" ################### 功能相关 ###################

" ctrlp ctrlpfunky{{{
    let g:ctrlp_map = 'cp'
    let g:ctrlp_cmd = 'CtrlP'
    map <leader>f :CtrlPMRU<CR>
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
        \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
        \ }
    let g:ctrlp_working_path_mode=0
    let g:ctrlp_match_window_bottom=1
    let g:ctrlp_max_height=15
    let g:ctrlp_match_window_reversed=0
    let g:ctrlp_mruf_max=500
    let g:ctrlp_follow_symlinks=1
" 禁止ctrlp的<c-o>来打开多文件 
let g:ctrlp_open_multiple_files =0 

    " 如果安装了ag, 使用ag
     if executable('ag')
       Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
       let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    " " ag is fast enough that CtrlP doesn't need to cache
       let g:ctrlp_use_caching = 0
     endif

    " ctrlpfunky
    " ctrlp插件1 - 不用ctag进行函数快速跳转
    nnoremap <Leader>fu :CtrlPFunky<Cr>
    " narrow the list down with a word under cursor
    nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
    let g:ctrlp_funky_syntax_highlight = 1

    let g:ctrlp_extensions = ['funky']
" }}}


" ctrlsf {{{
    nmap \ <Plug>CtrlSFCwordPath<CR>
    " let g:ctrlsf_position = 'below'
    " let g:ctrlsf_winsize = '30%'
    let g:ctrlsf_auto_close = 0
    let g:ctrlsf_confirm_save = 0
    " Note: cannot use <CR> or <C-m> for open
    " Use : <sapce> or <tab>
    let g:ctrlsf_mapping = {
        \ "open"  : "<Space>",
        \ "openb" : "O",
        \ "tab"   : "t",
        \ "tabb"  : "T",
        \ "prevw" : "p",
        \ "quit"  : "q",
        \ "next"  : "<C-J>",
        \ "prev"  : "<C-K>",
        \ "pquit" : "q",
        \ }
" }}}

" git.  git操作还是习惯命令行,vim里面处理简单diff编辑操作

" fugitive {{{
    " :Gdiff  :Gstatus :Gvsplit
    nnoremap <leader>ge :Gdiff<CR>
    " not ready to open
    " <leader>gb maps to :Gblame<CR>
    " <leader>gs maps to :Gstatus<CR>
    " <leader>gd maps to :Gdiff<CR>  和现有冲突
    " <leader>gl maps to :Glog<CR>
    " <leader>gc maps to :Gcommit<CR>
    " <leader>gp maps to :Git push<CR>
" }}}

" gitgutter {{{
    " 同git diff,实时展示文件中修改的行
    " 只是不喜欢除了行号多一列, 默认关闭,gs时打开
    let g:gitgutter_map_keys = 0
    let g:gitgutter_enabled = 0
    let g:gitgutter_highlight_lines = 1
    nnoremap <leader>gs :GitGutterToggle<CR>
" }}}

" gundo {{{
    noremap <leader>h :GundoToggle<CR>
" }}}

" ################### 显示增强 ###################

" airline {{{
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    let g:airline_left_sep = '▶'
    let g:airline_left_alt_sep = '❯'
    let g:airline_right_sep = '◀'
    let g:airline_right_alt_sep = '❮'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
    " 是否打开tabline
    " let g:airline#extensions#tabline#enabled = 1
" }}}



" rainbow_parentheses {{{
    " 不加入这行, 防止黑色括号出现, 很难识别
    " \ ['black',       'SeaGreen3'],
    let g:rbpt_colorpairs = [
        \ ['brown',       'RoyalBlue3'],
        \ ['Darkblue',    'SeaGreen3'],
        \ ['darkgray',    'DarkOrchid3'],
        \ ['darkgreen',   'firebrick3'],
        \ ['darkcyan',    'RoyalBlue3'],
        \ ['darkred',     'SeaGreen3'],
        \ ['darkmagenta', 'DarkOrchid3'],
        \ ['brown',       'firebrick3'],
        \ ['gray',        'RoyalBlue3'],
        \ ['darkmagenta', 'DarkOrchid3'],
        \ ['Darkblue',    'firebrick3'],
        \ ['darkgreen',   'RoyalBlue3'],
        \ ['darkcyan',    'SeaGreen3'],
        \ ['darkred',     'DarkOrchid3'],
        \ ['red',         'firebrick3'],
        \ ]

    let g:rbpt_max = 16
    let g:rbpt_loadcmd_toggle = 0
    au VimEnter * RainbowParenthesesToggle
    au Syntax * RainbowParenthesesLoadRound
    au Syntax * RainbowParenthesesLoadSquare
    au Syntax * RainbowParenthesesLoadBraces
" }}}


" ################### 显示增强-主题 ###################"

" solarized {{{
    let g:solarized_termtrans=1
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
    " let g:solarized_termcolors=256
" }}}

" molokai {{{
    " monokai原始背景色
    let g:molokai_original = 1
    let g:rehash256 = 1
" }}}


" ################### 快速导航 ###################

" nerdtree nerdtreetabs {{{
    " map <leader>n :NERDTreeToggle<CR>
    let NERDTreeHighlightCursorline=1
    let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
    "close vim if the only window left open is a NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end
    " s/v 分屏打开文件
    let g:NERDTreeMapOpenSplit = 's'
    let g:NERDTreeMapOpenVSplit = 'v'

" 打开目录树
    :nnoremap <leader>t :NERDTreeToggle %<CR>

    " nerdtreetabs
    map <Leader>n <plug>NERDTreeTabsToggle<CR>
    " 关闭同步
    " let g:nerdtree_tabs_synchronize_view=0
    " let g:nerdtree_tabs_synchronize_focus=0
    " 是否自动开启nerdtree
    " thank to @ListenerRi, see https://github.com/wklken/k-vim/issues/165
    let g:nerdtree_tabs_open_on_console_startup=0
    let g:nerdtree_tabs_open_on_gui_startup=0
" }}}


" Vim Workspace Controller
" ctrlspace {{{
    let g:airline_exclude_preview = 1
    hi CtrlSpaceSelected guifg=#586e75 guibg=#eee8d5 guisp=#839496 gui=reverse,bold ctermfg=10 ctermbg=7 cterm=reverse,bold
    hi CtrlSpaceNormal   guifg=#839496 guibg=#021B25 guisp=#839496 gui=NONE ctermfg=12 ctermbg=0 cterm=NONE
    hi CtrlSpaceSearch   guifg=#cb4b16 guibg=NONE gui=bold ctermfg=9 ctermbg=NONE term=bold cterm=bold
    hi CtrlSpaceStatus   guifg=#839496 guibg=#002b36 gui=reverse term=reverse cterm=reverse ctermfg=12 ctermbg=8
" }}}


" 标签导航
" tagbar {{{
    nmap <F9> :TagbarToggle<CR>
    let g:tagbar_autofocus = 1
    " let g:tagbar_autoshowtag = 1
    " let g:tagbar_show_visibility = 1
    " for ruby
    let g:tagbar_type_ruby = {
        \ 'kinds' : [
            \ 'm:modules',
            \ 'c:classes',
            \ 'd:describes',
            \ 'C:contexts',
            \ 'f:methods',
            \ 'F:singleton methods'
        \ ]
    \ }

    " go语言的tagbar配置
    " 1. install gotags 'go get -u github.com/jstemmer/gotags'
    " 2. make sure `gotags` in you shell PATH, you can call check it with `which gotags`
    " for gotags. work with tagbar
    let g:tagbar_type_go = {
        \ 'ctagstype' : 'go',
        \ 'kinds'     : [
            \ 'p:package',
            \ 'i:imports:1',
            \ 'c:constants',
            \ 'v:variables',
            \ 't:types',
            \ 'n:interfaces',
            \ 'w:fields',
            \ 'e:embedded',
            \ 'm:methods',
            \ 'r:constructor',
            \ 'f:functions'
        \ ],
        \ 'sro' : '.',
        \ 'kind2scope' : {
            \ 't' : 'ctype',
            \ 'n' : 'ntype'
        \ },
        \ 'scope2kind' : {
            \ 'ctype' : 't',
            \ 'ntype' : 'n'
        \ },
        \ 'ctagsbin'  : 'gotags',
        \ 'ctagsargs' : '-sort -silent'
    \ }
" }}}


" ################### 语言相关 ###################

" quickrun {{{
    let g:quickrun_config = {
    \   "_" : {
    \       "outputter" : "message",
    \   },
    \}

    let g:quickrun_no_default_key_mappings = 1
    nmap <Leader>r <Plug>(quickrun)
    map <F10> :QuickRun<CR>
" }}}


" pythonsyntax {{{
    let python_highlight_all = 1
" }}}

" piv {{{
    let g:DisableAutoPHPFolding = 1
" }}}


" vimgo {{{
    let g:go_highlight_functions = 1
    let g:go_highlight_methods = 1
    let g:go_highlight_structs = 1
    let g:go_highlight_operators = 1
    let g:go_highlight_build_constraints = 1

    let g:go_fmt_fail_silently = 1
    " format with goimports instead of gofmt
    let g:go_fmt_command = "goimports"
    let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
    let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go', 'java'] }
" }}}

" markdown {{{
    let g:vim_markdown_folding_disabled=1
" }}}


" javascript {{{
    " pangloss/vim-javascript
    let g:html_indent_inctags = "html,body,head,tbody"
    let g:html_indent_script1 = "inc"
    let g:html_indent_style1 = "inc"
" }}}

" json {{{
    let g:vim_json_syntax_conceal = 0
" }}}

" css {{{
" }}}


" ####### temp #######

" beta {{{
    " pip install yapf
    " python code format
    " format all file
    autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr>
    " format select block
    autocmd FileType python vnoremap <leader>y :!yapf<Cr>

    Plug 'posva/vim-vue'
    autocmd FileType vue syntax sync fromstart
    autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

    " Plug 'millermedeiros/vim-esformatter'
    " will run esformatter after pressing <leader> followed by the 'e' and 's'
    " keys
    " nnoremap <silent> <leader>es :Esformatter<CR>
    " vnoremap <silent> <leader>es :EsformatterVisual<CR>

" }}}

"------------------------------------------- end of configs --------------------------------------------


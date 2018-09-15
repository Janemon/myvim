"------
" Chen
" Joy may be end in Grief!
" Janemon2331@gmail.com
"--------- 

" NOTE: 大标题内容区的前后间隔是, 前2后3. 一行命令间隔是1, 多行则是2.



"==========================================
" Initial Plugin 加载插件
"==========================================


" 非兼容vi模式。去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible
" required! turn off
filetype off
" 允许插件
filetype plugin on


" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 移动光标到插件名上, 使用'#'快速跳转到每个插件的配置处

Plugin 'VundleVim/Vundle.vim'

" 解决中文输入法下面无法使用命令
Plugin 'ybian/smartim'

" CSS3 高亮，包括stylus,Less,Sass
Plugin 'hail2u/vim-css3-syntax'


" improved javscript
Plugin 'pangloss/vim-javascript'
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



Plugin 'leshill/vim-json'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'scrooloose/syntastic'
let g:syntastic_javsacript_checkers = ['eslint']

" hightlight Vue
Plugin 'posva/vim-vue'
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css


" expanding abbreviations similar to emmet
Plugin 'mattn/emmet-vim'
let g:user_emmet_leader_key='<C-k>' " html:5<c-k>, make a default template. 


" rainbow parenthese
Plugin 'luochen1990/rainbow'


" markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"markdown 实时预览(需要Python支持)
"Plugin 'iamcco/mathjax-support-for-mkdp'
"Plugin 'iamcco/markdown-preview.vim'
Plugin 'suan/vim-instant-markdown'


" syntastic
Plugin 'w0rp/ale'


" 自动补全单引号，双引号等
Plugin 'Raimondi/delimitMate'
" 自动补全html/xml标签
Plugin 'docunext/closetag.vim', { 'for': ['html', 'xml'] }


" 快速加入修改环绕字符
" for repeat -> enhance surround.vim, . to repeat command
Plugin 'tpope/vim-repeat' | Plugin 'tpope/vim-surround'

" 快速去行尾空格 [, + <Space>]
Plugin 'bronson/vim-trailing-whitespace'

" 快速赋值语句对齐
Plugin 'junegunn/vim-easy-align'

" expand the %
Plugin 'vim-scripts/matchit.zip'


" signature
" 显示marks - 方便自己进行标记和跳转
" m[a-zA-Z] add mark
" '[a-zA-Z] go to mark
" m<Space>  del all marks
" m/        list all marks
" m.        add new mark just follow previous mark
Plugin 'kshenoy/vim-signature'


" quick locate file or function
" 文件搜索
" ctrlp ctrlpfunky
Plugin 'ctrlpvim/ctrlp.vim' | Plugin 'tacahiroy/ctrlp-funky'

    let g:ctrlp_map = '<leader>ff'
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

" 如果安装了ag, 使用ag
" ctrlsf
" 类似sublimetext的搜索
" In CtrlSF window:
" 回车/o, 打开
" t       在tab中打开(建议)
" T - Lkie t but focus CtrlSF window instead of opened new tab.
" q - Quit CtrlSF window.
Plugin 'dyng/ctrlsf.vim'
" incsearch
" Plugin 'haya14busa/incsearch.vim'
" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)


" quickrun
Plugin 'thinca/vim-quickrun'

" git
" fugitive
Plugin 'tpope/vim-fugitive'

" gitgutter
Plugin 'airblade/vim-gitgutter'

" gundo
" edit history, 可以查看回到某个历史状态
Plugin 'sjl/gundo.vim'

" view
" airline
" 状态栏增强展示
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


" nav
" nerdtree nerdtreetabs
Plugin 'scrooloose/nerdtree' | Plugin 'jistr/vim-nerdtree-tabs'
" ctrlspace
Plugin 'vim-ctrlspace/vim-ctrlspace'
" tagbar
Plugin 'majutsushi/tagbar'


" text object
" 支持自定义文本对象
Plugin 'kana/vim-textobj-user'
" 增加行文本对象: l   dal yal cil
Plugin 'kana/vim-textobj-line'
" 增加文件文本对象: e   dae yae cie
Plugin 'kana/vim-textobj-entire'
" 增加缩进文本对象: i   dai yai cii - 相同缩进属于同一块
Plugin 'kana/vim-textobj-indent'


call vundle#end()

"==========================================
" General Settings 基础设置
"==========================================


" 开启语法高亮
syntax on
" 针对不同的文件类型采用不同的缩进格式
filetype indent on
" 启动自动补全
filetype plugin indent on


" history存储容量
set history=2000



" 文件修改之后自动载入
set autoread
" 启动的时候不显示那个援助乌干达儿童的提示
set shortmess=atI


" 备份,到另一个位置. 防止误删, 目前是取消备份
"set backup
"set backupext=.bak
"set backupdir=/tmp/vimbk/
" 取消备份。 视情况自己改
"set nobackup
" 关闭交换文件
set noswapfile


" 在搜索时或者在其他处理文件的地方时,忽略特定格式的文件
set wildignore=*.swp,*.bak,*.pyc,*.class,.svn


if has('gui_running')
  " don't show cursorcolumn. 
   set cursorline 
else
  " 突出显示当前列
   set cursorcolumn
  " 突出显示当前行
   set cursorline
endif 


" 显示当前的行号列号
set ruler
" 在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
set showmode
" 显示行号
set number
" 取消换行
" set nowrap

" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7
" 鼠标暂不启用, 键盘党....
set mouse-=a
" 启用鼠标
"set mouse=a
" 打字时隐藏鼠标 
" set mousehide

" Configure backspace so it acts as it should act in I or V mode.
set backspace=eol,start,indent
" we move can normal in what we think.
set whichwrap+=<,>,h,l


" 设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制, 不需要可以去掉
" 好处：误删什么的，如果以前屏幕打开，可以找回
set t_ti= t_te=



" 去掉输入错误的提示声音
"set novisualbell
"set noerrorbells
"set t_vb=
"set tm=500


" Remember info about open buffers on close
set viminfo^=%
" don't know what functions

" For regular expressions turn magic on
set magic
" 不知道作用



"==========================================
" Display Settings 展示/排版等界面格式设置
"==========================================


" 命令行（在状态行下）的高度，默认为1，这里是2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" Always show the status line - use 2 lines for the status bar
set laststatus=2


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
:nnoremap <leader>nn :nohl<CR>


" 代码折叠
set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
"set foldmethod=indent
set foldmethod=syntax
"打开文件是默认不折叠代码
set foldlevelstart=99


" 缩进配置
set smartindent
" 打开自动缩进
" never add copyindent, case error   " copy the previous indentation on autoindenting
set autoindent
" 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'
set shiftround


" A buffer becomes hidden when it is abandoned
set hidden
set wildmode=list:longest
set ttyfast


" 00x增减数字时使用十进制
set nrformats=
" don't know what function


" 相对行号: 行号变成相对，可以用 nj/nk 进行跳转
set relativenumber number
au FocusLost * :set norelativenumber number
au FocusGained * :set relativenumber
" 插入模式下用绝对行号, 普通模式下用相对
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
function! NumberToggle()
if(&relativenumber == 1)
  set norelativenumber number
else
  set relativenumber
endif
endfunc
"nnoremap <C-n> :call NumberToggle()<cr>



"==========================================
" FileEncode Settings 文件编码,格式
"==========================================


" 设置新文件的编码为 UTF-8
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



"==========================================
" others 其它设置
"==========================================


" vimrc文件修改之后自动加载, windows
autocmd! bufwritepost _vimrc source %
" vimrc文件修改之后自动加载, linux
autocmd! bufwritepost .vimrc source %


" 自动补全配置
" 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu

" 增强模式中的命令行自动完成操作
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class


" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif


" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
" quickfix window  s/v to open in split window,  ,gd/,jd => quickfix window => open it
autocmd BufReadPost quickfix nnoremap <buffer> v <C-w><Enter><C-w>L
autocmd BufReadPost quickfix nnoremap <buffer> s <C-w><Enter><C-w>K
" At fact, I don't know what are these?


" command-line window
autocmd CmdwinEnter * nnoremap <buffer> <CR> <CR>


" 打开自动定位到最后编辑的位置, 需要确认 .viminfo 当前用户可写
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" 这个也不知所云云


"==========================================
" HotKey Settings  自定义快捷键设置
"==========================================


"set swap之后，同物理行上线直接跳
"nnoremap k gk
"nnoremap gk k
"nnoremap j gj
"nnoremap gj j


" F2 行号开关，用于鼠标复制代码用
" 为方便复制，用<F2>开启/关闭行号显示:
function! HideNumber()
if(&relativenumber == &number)
  set relativenumber! number!
elseif(&number)
  set number!
else
  set relativenumber!
endif
set number?
endfunc

nnoremap <F2> :call HideNumber()<CR>
" F3 显示可打印字符开关
nnoremap <F3> :set list! list?<CR>
" F4 换行开关
nnoremap <F4> :set wrap! wrap?<CR>

" F5 set paste问题已解决, 粘贴代码前不需要按F5了
" F5 粘贴模式paste_mode开关,用于有格式的代码粘贴
function! XTermPasteBegin()
set pastetoggle=<Esc>[201~
set paste
return ""
endfunction
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

" F6 语法开关，关闭语法可以加快大文件的展示
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>



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
" I don't know what's these?


" Keep search pattern at the center of the screen.
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz


" for # indent, python文件中输入新行时#号注释不切回行首
autocmd BufNewFile,BufRead *.py inoremap # X<c-h>#


" tab切换
nnoremap <leader>ht :tabfirst<cr>
nnoremap <leader>lt :tablast<cr>
nnoremap <S-Left> :tabprev<cr>
nnoremap <S-Right> :tabnext<cr>
nnoremap <leader>dt :tabclose<cr>
nnoremap <leader>mt :tabm<cr>
"nnoremap <leader>et :tabedit<cr>



" 新建tab  Ctrl+t
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>



"==========================================
" FileType Settings  文件类型设置
"==========================================


" 具体编辑文件类型的一般设置，比如不要 tab 等
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
autocmd FileType ruby,javascript,html,css,xml set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
autocmd BufRead,BufNewFile *.md,*.mkd,*.markdown set filetype=markdown.mkd
autocmd BufRead,BufNewFile *.part set filetype=html
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
" disable showmatch when use > in php
au BufWinEnter *.php set mps-=<:>


" 保存文件时删除多余空格
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,go,php,html,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()



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
" I don't know



"==========================================
" TEMP 设置, 尚未确定要不要
"==========================================





"==========================================
" Theme Settings  主题设置
"==========================================


" Set extra options when running in GUI mode
:set guifont=Monaco\ 12,Monospace\ 12
: set guioptions-=T
":set guioptions+=e
:set guioptions-=r
:set guioptions-=L
":set guitablabel=%M\ %t
":set showtabline=1
":set linespace=2
":set noimd
set t_Co=256
":set guiheadroom=0 
    
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



" ============================Janemon=================================
:let mapleader=','

:set updatetime=3000
"autocmd CursorHold,CursorHoldI * update
autocmd CursorHold * update

" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>
" 启动 vim 时自动全屏
"autocmd vimEnter * call ToggleFullscreen()


:nnoremap <leader>ov :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>


:iabbrev @@ \"-----<cr>\"Chen<cr>\"Joy may be end in Grief!<cr>\"janemon2331@gmail.com<cr>---------
:iabbrev teh the
" correct the word and we should know that it work after we keystrok whiteSpace.


:nnoremap <leader>" <esc>viw<esc>a"<esc>hbi"<esc>lel
" the above one just sorounding a word by '""' not a sentence
:nnoremap <leader>>> <esc>viw<esc>a>><esc>hbi<<<esc>lel
:nnoremap <leader>b bi**<esc>ea**<esc>


" 将Tab自动转化成空格[需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set expandtab
" 设置Tab键的宽度        [等同的空格个数]
set tabstop=4
" 每一次缩进对应的空格数
set shiftwidth=4
" 按退格键时可以一次删掉 4 个空格
set softtabstop=4



:vnoremap <C-y> "+y
:nnoremap <C-p> "+p
:vnoremap <C-p> "+p
:vnoremap <C-x> "+d


:nnoremap <C-a> <esc>ggvG$ " this is select all in "v-module".
:nnoremap <S-h> viw
:nnoremap <S-l> :nohls<cr>



" synchronize html file
:nnoremap <S-P> :!google-chrome %<CR>

:inoremap <leader>l <esc>la
:inoremap jk <esc>
:inoremap <esc> <nop>
:vnoremap jk <esc>
:vnoremap <esc> <nop>
:nnoremap HH 0
:nnoremap LL $
:vnoremap HH 0
:vnoremap LL $

" 遮盖内容(加密)
:nnoremap <Leader>zf ggVGg?


" 找括号
:inoremap ,, <esc>f)a
:inoremap ,,, <esc>f>a
:nnoremap ,, <esc>f)a
:nnoremap ,,, <esc>f>a


:nnoremap dw daw
:nnoremap cw caw


" this is just fit to some wolds file.
:nnoremap  yl T.yf. 
:nnoremap  dl T.df.

" quit without save
:nnoremap qq :q<CR>

:nnoremap <leader>t :NERDTreeToggle %<CR>  


"delete the <tags>. Special the html.
:nnoremap dm F<vf>df<vf>d
"parir marks
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


" 切换前后buffer
"nnoremap [b :bprevious<cr>
"nnoremap ]b :bnext<cr>
" 使用方向键切换buffer
noremap <left> :bp<CR>
noremap <right> :bn<CR>


" rename the file
:command! -nargs=1 Rn let tpname = expand('%:t') | saveas <args> | edit <args> | call delete(expand(tpname))
 
" 块注释
:nnoremap <leader>zs i/*<cr> *<cr>*<cr>*<cr>*<cr>*/<esc>kkkkka =========<esc>jja ---------<esc>ka 

" this is auto cmd
:augroup MY
  :autocmd!
  :autocmd FileType javascript nnoremap <leader>c 0i//<esc>
  :autocmd FileType html inoremap <leader>c <!----><esc>F-;i
  :autocmd FileType html nnoremap d> F>lvf<hdh
  :autocmd FileType * vnoremap <leader>cc di*/<esc>hi/*<esc>""p
  :autocmd BufWrite,BufRead *.html :normal gg=G
  :autocmd bufwrite * :echom "writing buffer"
:augroup END

" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
fun! ToggleFullscreen()
	call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf



" 分屏窗口移动, Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" auto open the NERDTree
" autocmd vimenter * NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" rainbow-pareness settings
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle


" 当多窗口时, 切换窗口的最大或者最小 
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


" 禁止ctrlp的<c-o>来打开多文件 
let g:ctrlp_open_multiple_files =0 



"================================END=======================





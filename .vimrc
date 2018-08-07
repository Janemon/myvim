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
filetype off " required! turn off
" 允许插件
filetype plugin on


" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 移动光标到插件名上, 使用'#'快速跳转到每个插件的配置处

Plugin 'VundleVim/Vundle.vim'


"Plugin 'Valloric/YouCompleteMe'
"the substitute for YouCompleteMe
"Plugin 'Shougo/neocomplete.vim'
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
" Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
" Use smartcase.
"let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
"let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
"let g:neocomplete#sources#dictionary#dictionaries = {
""    \ 'default' : '',
""    \ 'vimshell' : $HOME.'/.vimshell_hist',
""    \ 'scheme' : $HOME.'/.gosh_completions'
""        \ }
"
"" Define keyword.
"if !exists('g:neocomplete#keyword_patterns')
""    let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
"  " For no inserting <CR> key.
"  "return pumvisible() ? "\<C-y>" : "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
"" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
""  let g:neocomplete#sources#omni#input_patterns = {}
"endif
""let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
""let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
""let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
"" For perlomni.vim setting.
"" https://github.com/c9s/perlomni.vim
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


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


" Group dependencies, vim-snippets depends on ultisnips
" 代码片段快速插入 (snippets中,是代码片段资源,需要学习)
" Snippets are separated from the engine. Add this if you want them:
" Plugin 'SirVer/ultisnips' | Plugin 'honza/vim-snippets'
" auto complete
" 代码自动补全
" 迄今为止用到的最好的自动VIM自动补全插件
" 重启 :YcmRestartServer
"Plugin 'Valloric/YouCompleteMe'


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

" 有些小问题, 我还以为可以代替Ctrlp呢?
"Plugin 'Yggdroot/LeaderF', { 'do': './install.sh' }


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

" rainbow_parentheses
" 括号显示增强
"Plugin 'kien/rainbow_parentheses.vim'

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
" 检测文件类型
" filetype on
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


" 修复ctrl+m 多光标操作选择的bug，但是改变了ctrl+v进行字符选中时将包含光标下的字符
"set selection=inclusive
"set selectmode=mouse,key


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
" 代码折叠自定义快捷键 <leader>zz
let g:FoldMethod = 0
map <leader>zz :call ToggleFold()<cr>
fun! ToggleFold()
    if g:FoldMethod == 0
        exe "normal! zM"
        let g:FoldMethod = 1
    else
        exe "normal! zR"
        let g:FoldMethod = 0
    endif
endfun
" 暂时不清楚是什么具体作用


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
nnoremap <C-n> :call NumberToggle()<cr>



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
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j


" F1 废弃这个键,防止调出系统帮助
" I can type :help on my own, thanks.  Protect your fat fingers from the evils of <F1>
"nnoremap <F1> <Esc>"


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
noremap <leader>th :tabfirst<cr>
noremap <leader>tl :tablast<cr>
noremap <leader>tj :tabnext<cr>
noremap <leader>tk :tabprev<cr>
noremap <leader>te :tabedit<cr>
noremap <leader>td :tabclose<cr>
noremap <leader>tm :tabm<cr>

" normal模式下切换到确切的tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

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

:set updatetime=500
:set updatecount=3
:au FocusLost * :wa
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


:nnoremap <leader>m %
:vnoremap <leader>m %
" the above make cursor can jump between the pair of parentness


:vnoremap <C-y> "+y
:nnoremap <C-p> "+p
:vnoremap <C-p> "+p
:vnoremap <C-x> "+d


:nnoremap <C-a> <esc>ggvG$ " this is select all in "v-module".
:nnoremap <S-h> viw
:nnoremap <S-n> :nohls<cr>


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


:inoremap ,, <esc>f)a
:inoremap ,,, <esc>f>a
:nnoremap ,, <esc>f)a
:nnoremap ,,, <esc>f>a


:nnoremap dw daw
:nnoremap cw caw


" this is just fit to some wolds file.
:nnoremap  yl T.yf. 
:nnoremap  dl T.df.


:nnoremap <leader>t :NERDTreeToggle<CR>  


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
 

" this is auto cmd
:augroup MY
  :autocmd!
  :autocmd FileType javascript nnoremap <leader>c 0i//<esc>
  :autocmd FileType * vnoremap <leader>cc di*/<esc>hi/*<esc>""p
  :autocmd BufWrite,BufRead *.html :normal gg=G
  :autocmd FileType javascript :iabbrev iff if(){}
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





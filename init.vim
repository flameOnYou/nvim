"source $VIMRUNTIME/mswin.vim
call plug#begin('~/.local/share/nvim/plugged')

"状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'liuchengxu/space-vim-theme'

Plug 'neomake/neomake'
Plug 'tracyone/neomake-multiprocess'

Plug 'skywind3000/asyncrun.vim'

Plug 'vobornik/vim-mql4'
Plug 'rupurt/vim-mql5'

"vim中文帮助
Plug 'yianwillis/vimcdoc'

"tab切换插件
Plug 'ap/vim-buftabline'

"窗口选择 按-
Plug 't9md/vim-choosewin'
"

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'deoplete-plugins/deoplete-jedi'

"树状管理文件夹
Plug 'scrooloose/nerdtree'

Plug 'neoclide/coc.nvim', {'do': './install.cmd nightly'}
call plug#end()

let g:python_host_prog = 'C:\Python27\python.exe'
let g:python3_host_prog = 'C:\Python37\python.exe'

"共享剪切板
set clipboard^=unnamed,unnamedplus

let g:deoplete#enable_at_startup = 1
" theme
colorscheme space_vim_theme
"gvim内部编码
set encoding=utf-8
"当前编辑的文件编码
set fileencoding=utf-8
"gvim打开支持编码的文件
set fileencodings=ucs-bom,utf-8,gbk,cp936,gb2312,big5,euc-jp,euc-kr,latin1
"set langmenu=zh_CN
"let $LANG = ‘zh_CN.UTF-8′
"解决consle输出乱码
language messages zh_CN.utf-8
"设置终端编码为gvim内部编码encoding
let &termencoding=&encoding
"防止特殊符号无法正常显示
set ambiwidth=double
"缩进尺寸为4个空格
set sw=4
"tab宽度为4个字符
set ts=4
"编辑时将所有tab替换为空格
set et
"按一次backspace就删除4个空格了
set smarttab
"不生成备份文件,如index.html~
set nobackup
"关闭交换文件
set noswapfile
"关闭备份文件
set noundofile
"开启行号标记
set number
"开启自动缩进
set autoindent

"按F3即可显示或隐藏NerdTree区域了。
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
"let g:airline_symbols.linenr = '☰'
"let g:airline_symbols.maxlinenr = ''
"异步运行插件不中文乱码
let g:asyncrun_encs = 'gbk'

"全屏
"map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 

nmap  -  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

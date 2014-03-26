filetype plugin indent on
"开启插件
set nocompatible
"不兼容vi模式
set number
"显示行号
syntax on
"语法高亮
set tabstop=4
"设置tap键为4个空格
set shiftwidth=4
"设置当行之间交错时使用4个空格， << 和 >> 命令移动时的宽度为 4
set softtabstop=4
"使得按退格键时可以一次删掉 4 个空格
set expandtab
"设置缩进长度
set showmatch
"设置匹配模式 显示括号对应
set ruler
"打开状态栏标尺
set incsearch
"实时显示搜索结果
set scrolloff=3
"当光标与顶部距离为三行时发生翻滚，且翻滚后光标与底部相距三行
set autoindent
"自动对齐方式
set smartindent
"智能对齐方
set showmode
"显示当前模式
set showcmd
"在窗口右下角显示完整命令已输入部分
set hidden
"允许在有未保存的修改时切换缓冲区，此时的修改由vim负责保存
set wildmenu
"启用文本模式的菜单
set wildmode=list:longest
"增强模式打开列表
set cursorline
"高亮光标所在行
set ttyfast
"设置快速终端
set backspace=indent,eol,start
"设置backspace的工作方式 不兼容vi
set laststatus=2
"总是显示状态栏
set undofile
"编辑一个文件的时候要创建<FILENAME>.un~文件,以便撤销,即使是关闭重开文件
set encoding=utf-8
"选择编码

set guifont=Monaco:h13
"设置双字节字体
set guifontwide=Hiragino_Sans_GB:h14
"设置单字节字体
set linespace=1
"设置行高
colorscheme jellybeans
"设置颜色主题
set lines=54 columns=90
"设置macvim窗口大小
autocmd! bufwritepost .gvimrc source ~/.gvimrc
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"pydiction 1.2 python auto complete
filetype plugin on
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
"defalut g:pydiction_menu_height == 15
"let g:pydiction_menu_height = 20
let Tlist_Show_One_File = 1  	"不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1	
let Tlist_Use_Right_Window = 1

set laststatus=2
set t_Co=256

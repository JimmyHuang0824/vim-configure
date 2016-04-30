"系统设置LANG读不出来，不知道为什么，这里手动设置一下
set encoding=utf-8
set fileencodings=utf-8,gbk,ucs_bom,cp936
set number
set nolist


set nocompatible "不要vim模仿vi模式，建议设置，否则会有很多不兼容的问题
syntax on"打开高亮
syntax enable "


"自动缩进"
filetype plugin on
set tabstop=4
set softtabstop=4

set shiftwidth=4
set autoindent
set cindent



set nowrap "不自动换行
set hlsearch "高亮显示结果
set incsearch "在输入要搜索的文字时，vim会实时匹配
set backspace=indent,eol,start whichwrap+=<,>,[,] "允许退格键的使用



"进行Tlist的设置
"TlistUpdate可以更新tags
map <F3> :silent! Tlist<CR> "按下F3就可以调出了
let Tlist_Ctags_Cmd='ctags' "因为我们放在环境变量里，所以可以直接执行
let Tlist_Use_Right_Window=1 "让窗口显示在右边，0的话就是显示在左边
let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表，如果想只有1个，设置为1
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动推出vim
let Tlist_Process_File_Always=0 "是否一直处理tags.1:处理;0:不处理。不是一直实时更新tags，因为没有必要
let Tlist_Inc_Winwidth=0

"对NERD_commenter的设置
let NERDShutUp=1

"doxygen 设置
map fg : Dox<cr>
let g:DoxygenToolkit_authorName="gavinduan"
let g:DoxygenToolkit_licenseTag="My own license\<enter>"
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_briefTag_pre = "@brief\t"
let g:DoxygenToolkit_paramTag_pre = "@param\t"
let g:DoxygenToolkit_returnTag = "@return\t"
let g:DoxygenToolkit_briefTag_funcName = "no"
let g:DoxygenToolkit_maxFunctionProtoLines = 30

"对NERDTree设置
map <C-n> :NERDTreeToggle<CR>

"设置换行wrap
set ww="b,s,h,l"

"color scheme
set t_Co=256
set background=dark
colorscheme molokai

"colorscheme ir_black

"multi-window manipulation
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

"functionlist map
map <F2> :Flisttoggle<CR>

:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>

inoremap , <ESC>a, <ESC>a
						

"自动补全OmiciCppComplete"
set nocp 
filetype plugin indent on 

"PHP补全

set tags+=~/.vim/tags/cpp
set tags+=./tags
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全 
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表 
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全 
set completeopt-=preview

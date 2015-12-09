set nu
colorscheme evening
"colorscheme desert
filetype indent on
set nocompatible
set autoread
"set cursorline
set guioptions-=T
set guioptions-=m

autocmd FileType js,m,c,java,py,sh,cpp,html,php,rb set shiftwidth=4|set ts=4|set expandtab

syntax on

au BufNewFile,BufRead *.pc set filetype=c

set tags=/home/jackstraw/Documents/yc/dualandroid/lxc/kernel_msm_note/tags
",/home/jackstraw/Documents/yc/dualandroid/android5.1/tags
"set tags=/home/jackstraw/software/source/linux-2.6.32.64/tags

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8


set showmatch                                      " 高亮显示匹配的括号                                                                                
set matchtime=5                                    " 匹配括号高亮的时间（单位是十分之一秒）
set ignorecase                                     " 在搜索的时候忽略大小写
set hlsearch                                       " 高亮被搜索的句子（phrases）
set incsearch                                      " 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）

autocmd BufNewFile *.c 0r ~/.vim/template/c.tlp
autocmd BufNewFile *.java 0r ~/.vim/template/java.tlp
filetype plugin on
filetype plugin indent on
"set mouse=a

"Taglist
"let Tlist_Use_Right_Window = 1
"let Tlist_Show_One_File = 1
"noremap <F9> :TlistToggle<CR>

" cscope
cs add ./cscope.out




"------WinManager NERDTree TagList MinniBufExploer setting---------------"
"1 <enter> if file then open it; 2 <tab> if file then open it in NEW window; 3 <u> to update in tag_list
"Usage in winmanger
"	c:change cur DIR to work DIR of vim
"	D:delete file or dir in cursor
"	i:chage type of display
"	R:rename file or dir
"let g:winManagerWindowLayout='FileExplorer|TagList'

let Tlist_Process_File_Always=1
let g:NERDTree_title='[NERDTree]'
let g:winManagerWindowLayout='NERDTree|TagList'
function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

let g:persistentBehaviour=0
let g:Tlist_Exit_OnlyWindow = 1
nmap wm :WMToggle<cr>

let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMoreThanOne=0

"-----------------------------------END-----------------------------------"




"-----fold setting-----"
"###1 <zM>:close all folder; 2 <zR>:open all folder###
set fdm=syntax
"-----END-----"

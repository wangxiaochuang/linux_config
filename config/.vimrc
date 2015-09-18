set nu
colorscheme evening
filetype indent on

autocmd FileType js,m,c,java,py,sh,cpp,html,php,rb set shiftwidth=4|set ts=4|set expandtab

set fdm=syntax
syntax on

au BufNewFile,BufRead *.pc set filetype=c

set tags=/home/jackstraw/Documents/github/threadPool/tags,$WXC/tags,/home/jackstraw/Documents/security/security1/PPBankCrypto/tags,~/symbol/001FinancialSecLib/tags,$WXC/mySourceCode/tags,~/software/source/Python-2.7.10/tags

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
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Show_One_File = 1
noremap <F9> :TlistToggle<CR>

"inoremap ( ()<esc>i
"inoremap { {<esc>o}<esc>O
"inoremap [ []<esc>i
"inoremap < <><esc>i
"inoremap ' ''<esc>i

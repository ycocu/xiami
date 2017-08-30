set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set fileencodings=utf-8,ucs-bom,chinese
set backspace=2

vmap "+y :w !pbcopy<CR><CR> 
nmap "+p :r !pbpaste<CR><CR>

"语言设置
set langmenu=zh_CN.UTF-8



map "+y :w !pbcopy<CR><CR> 
map "+p :r !pbpaste<CR><CR> 

" ctrl-x for cut 
vmap <C-x> :!pbcopy<cr> 
" " ctrl-c for copy 
vmap <C-c> :w !pbcopy<cr><cr> 
" " ctrl-v for paste 
"nmap <C-v> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR> 
imap <C-v> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR> 



"设置语法高亮
syntax enable
syntax on
 
"设置配色方案
colorscheme torte
 
"可以在buffer的任何地方使用鼠标
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
 
"高亮显示匹配的括号
set showmatch
 
"去掉vi一致性
set nocompatible

"highlight
"set ruler

"设置缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
if &term=="xterm"
    set t_Co=8
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif
 
"打开文件类型自动检测功能
filetype on
 
"设置taglist
let Tlist_Show_One_File=0   "显示多个文件的tags
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "在taglist是最后一个窗口时退出vim
let Tlist_Use_SingleClick=1 "单击时跳转
let Tlist_GainFocus_On_ToggleOpen=1 "打开taglist时获得输入焦点
let Tlist_Process_File_Always=1 "不管taglist窗口是否打开，始终解析文件中的tag
 
"设置WinManager插件
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
map <silent> <F9> :WMToggle<cr> "将F9绑定至WinManager,即打开WimManager
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" install vim-go
Plugin 'fatih/vim-go'

Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'


" The following are examples of different formats supported. 
" Keep Plugin commands between here and filetype plugin indent on. 
" scripts on GitHub repos
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly. 
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} 
" scripts from http://vim-scripts.org/vim/scripts.html 
Plugin 'L9'
Plugin 'FuzzyFinder'" scripts not on GitHub
Plugin 'git://git.wincent.com/command-t.git'" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'" ...
Bundle 'Valloric/YouCompleteMe'
 

" use goimports for formatting
let g:go_fmt_command = "goimports"

" " turn highlighting on
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" Open go doc in vertical window, horizontal, or tab
au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>s :sp <CR>:exe "GoDef"<CR>
au Filetype go nnoremap <leader>t :tab split <CR>:exe "GoDef"<CR>


"设置自动补全
filetype plugin indent on   "打开文件类型检测
set completeopt=longest,menu "关掉智能补全时的预览窗口
 
"启动vim时如果存在tags则自动加载
if exists("tags")
    set tags=./tags
endif
 
"""""""""""""""""""""""""""""
"nerd tree set
"""""""""""""""""""""""""""""

map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")&&b:NERDTreeType == "primary") | q | endif


autocmd VimEnter * NERDTree
"let NERDTreeWinPos="right"
let NERDTreeShowBookmarks=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

 
"设置默认shell
set shell=bash
 
"设置VIM记录的历史数
set history=400
 
"设置当文件被外部改变的时侯自动读入文件
if exists("&autoread")
    set autoread
endif
 
"设置ambiwidth
set ambiwidth=double
 
"设置文件类型
set ffs=unix,dos,mac
 
"设置增量搜索模式
set incsearch
 
"设置静音模式
set noerrorbells
set novisualbell
set t_vb=






set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"Plugin 'tpope/vim-commentary'
"Plugin 'vim-airline/vim-airline'
"Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" 画面表示の設定
colorscheme desert
syntax on          				" 構文ハイライト
set number         				" 行番号を表示する
set ruler          				" 現在の行とカラム位置を表示 
set cursorline  			    " カーソル行の背景色を変える
set laststatus=2   				" ステータス行を常に表示
set cmdheight=2    				" メッセージ表示欄を2行確保
let loaded_matchparen=1   " 対応する括弧を強調表示しない
set showcmd	   						" 入力中のコマンドを表示する
set helpheight=999 				" ヘルプを画面いっぱいに開く
let fortran_free_source=1	" 固定形式を自由形式に変える
let fortran_fold=1
autocmd Filetype * setlocal formatoptions=q				" 勝手に改行されない
"autocmd VimEnter * execute 'NERDTree'
 autocmd BufNewFile,BufRead *.py nnoremap <Space>r : <C-u>!python %<CR>
" カーソル移動関連の設定
set backspace=indent,eol,start " Backspaceキーの影響範囲に制限を設けない
set scrolloff=8                " 上下8行の視界を確保
set sidescrolloff=16           " 左右スクロール時の視界を確保
set sidescroll=1               " 左右スクロールは一文字づつ行う

" 文字入力関連の設定
"set autoindent		" インデント
set smartindent
set tabstop=2			" タブ幅
set shiftwidth=2
set expandtab
nnoremap <Space>w :<C-u>write<CR>
vnoremap <Space><CR> :!sh<CR>    # 行選択中に実行
nnoremap <Space><CR> V:!sh<CR>   # 行選択していない状態から実行
autocmd BufRead *.f90 retab 2

" ファイル処理関連の設定
set confirm    " 保存されていないファイルがあるときは終了前に保存確認
set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread   " 外部でファイルに変更がされた場合は読みなおす
set nobackup   " ファイル保存時にバックアップファイルを作らない
"set noswapfile " ファイル編集中にスワップファイルを作らない
set wildmenu   " コマンドの補完を有効化

" 検索/置換の設定
set hlsearch   " 検索文字列をハイライトする
set incsearch  " インクリメンタルサーチを行う
set ignorecase " 大文字と小文字を区別しない
set smartcase  " 大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set wrapscan   " 最後尾まで検索を終えたら次の検索で先頭に移る

inoremap <silent> jj <ESC>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

""dein Scripts-----------------------------
"if &compatible
"  set nocompatible               " Be iMproved
"endif
"
"  " Required:
"  set runtimepath+=/home/taisei/.cache/dein/repos/github.com/Shougo/dein.vim
"
"  " Required:
"  if dein#load_state('/home/taisei/.cache/dein')
"    call dein#begin('/home/taisei/.cache/dein')
"
"      " Let dein manage dein
"        " Required:
"          call
"          dein#add('/home/taisei/.cache/dein/repos/github.com/Shougo/dein.vim')
"
"  " Add or remove your plugins here like this:
"    call dein#add('Shougo/neosnippet.vim')
"    call dein#add('Shougo/neosnippet-snippets')
"    call dein#add('scrooloose/nerdtree')
"  " Required:
"    call dein#end()
"    call dein#save_state()
"   endif
" " Required:
" filetype plugin indent on
" syntax enable
"
" " If you want to install not installed plugins on
" startup.
" if dein#check_install()
"   call dein#install()
" endif
"
" "End dein Scripts-------------------------

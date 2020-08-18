"行番号の表示
set number

"互換モードをオフ
set nocompatible

"カーソルの点滅を消す
set guicursor=a:blinkon0

"自動的にクリップボードを利用する
set clipboard=unnamed,autoselect

"" タブ幅
set tabstop=4

"" ヘルプを日本語に設定 dein.tomlも参照
set helplang=ja

" 改行コードの自動認識
set fileformats=unix,dos,mac
" □とか○の文字があってもカーソル位置がずれないようにする
if exists('&ambiwidth')
 set ambiwidth=double
endif


"自動でインデントする
set smartindent

"空行のインデントを勝手に消さない
nnoremap o oX<C-h>
nnoremap O OX<C-h>
nnoremap <CR> <CR>X<C-h>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"以下キーマップ
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <C-j> }
map <C-k> {

map <C-h> 0
map <C-l> $

"":/　でmigemo サーチ
"nnoremap g/ <leader>mi
"
""http://code.google.com/p/macvim-kaoriya/issues/detail?id=16
"set migemo
"set migemodict=$VIMRUNTIME/dict/migemo-dict
"
"

"バッファ移動
map <C-n> gt
map <C-p> gT

"ノーマルモード中にエンターキーで改行
nmap <Cr> :<C-u>call append(expand('.'), '')<Cr>j

" :MarkdownPreview
nmap gp  <Plug>MarkdownPreview 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" コマンド
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"文字カウント
nnoremap :charcnt<CR> :%s/.//gn<CR>
"
""ステータスバーにファイル名、文字コード、改行コードを表示
""http://sh1.2-d.jp/b/2007-04-18-02-27.html
"set laststatus=2 "ステータスバーを常に表示
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8


" swap file 
set directory=~/.vim/swap
" backup file
set backupdir=~/.vim/backup
" undo file
set undodir=~/.vim/undo


" beep音を鳴らさない
set belloff=all

" setting dein.vim for managing vim plugin
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"dein Scripts-----------------------------

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " ~~~ ここからtomlファイルを利用するための設定 ~~~
  " 導入するプラグインを記載したtomlファイルのパスを記載する
   let s:toml_dir  = $HOME . '/.vim/rc' 
   let s:toml      = s:toml_dir . '/dein.toml'
   let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'
  
   " tomlファイルをキャッシュしておくための記述
   call dein#load_toml(s:toml,      {'lazy': 0})
   call dein#load_toml(s:lazy_toml, {'lazy': 1})
  " ~~~ tomlのための設定はここまで ~~~



  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" previm setting

" .vimrc
" リアルタイムにプレビューする
let g:previm_enable_realtime = 1

" https://blog.wadackel.me/2017/previmg-github-style/
let g:previm_custom_css_path='~/dotfiles/vim/previm/markdown.css'
let g:previm_open_cmd='open -a Google\ Chrome'
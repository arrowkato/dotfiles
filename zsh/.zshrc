## Comploetion configuration

autoload -U compinit
compinit 

export PATH=/opt/local/bin:/opt/local/sbin/:/opt/local/include:$PATH:/opt/local/lib/
export PKG_CONFIG_PATH=/opt/local/lib/pkgconfig/
# Pythonは3系がデフォルトで使われるようにする
export PATH=/usr/local/opt/python/libexec/bin:$PATH


# zshを開くごとにzsh_profileの読み込み
source ~/.zsh_profile


export LSCOLORS=gxfxcxdxbxegedabagacad
export LS_COLORS='di=35:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls -GF"
alias gls="gls --color"
alias pdf="open -a Preview"
alias mvim="open -a /Applications/MacVim.app"
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'


# 文字コードの設定
export LANG=ja_JP.UTF-8

# パスの設定
PATH=/usr/local/bin:/$PATH
export MANPATH=/usr/local/share/man:/usr/local/man:/usr/share/man

# adb コマンドのパス
PATH=$PATH:$HOME/Library/Android/sdk/platform-tools

# 関数
find-grep () { find . -type f -print | xargs grep -n --binary-files=without-match $@ }


# プロンプトの設定 
PROMPT='%K{green}%F{black}%~#%f%k '

# ヒストリの設定
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000


# ls cd rm
#http://d.hatena.ne.jp/UDONCHAN/20100618/1276842846
zshaddhistory() {
    local line=${1%%$'\n'}
    local cmd=${line%% *}
    [[     ${cmd} != (ls)
        && ${cmd} != (cd)
        && ${cmd} != (rm)
     ]]
}

# 履歴ファイルに時刻を記録
setopt extended_history

# 補完するかの質問は画面を超える時にのみに行う｡
LISTMAX=0


# sudo でも補完の対象
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin

# cdのタイミングで自動的にpushd
setopt auto_pushd 

# 複数の zsh を同時に使う時など history ファイルに上書きせず追加
setopt append_history

# 補完候補が複数ある時に、一覧表示
setopt auto_list

# 保管結果をできるだけ詰める
setopt list_packed

# 補完キー（Tab, Ctrl+I) を連打するだけで順に補完候補を自動で補完
setopt auto_menu

# カッコの対応などを自動的に補完
setopt auto_param_keys

# ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash

# ビープ音を鳴らさないようにする
setopt no_beep

# 直前と同じコマンドラインはヒストリに追加しない
setopt hist_ignore_dups

# ヒストリにhistoryコマンドを記録しない
setopt hist_no_store

# 余分なスペースを削除してヒストリに記録する
setopt hist_reduce_blanks

# 行頭がスペースで始まるコマンドラインはヒストリに記録しない
# setopt hist_ignore_spece

# 重複したヒストリは追加しない
setopt hist_ignore_all_dups

# ヒストリを呼び出してから実行する間に一旦編集できる状態になる
setopt hist_verify

# auto_list の補完候補一覧で、ls -F のようにファイルの種別をマーク表示しない
setopt no_list_types

# コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
setopt magic_equal_subst

# ファイル名の展開でディレクトリにマッチした場合末尾に / を付加する
setopt mark_dirs

# 8 ビット目を通すようになり、日本語のファイル名を表示可能
setopt print_eight_bit

# シェルのプロセスごとに履歴を共有
setopt share_history

# Ctrl+wで､直前の/までを削除する｡
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# ディレクトリを水色にする｡
export LS_COLORS='di=01;36'

# ファイルリスト補完でもlsと同様に色をつける｡
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# cd をしたときにlsを実行する
function chpwd() { ls }

# ディレクトリ名だけで､ディレクトリの移動をする｡
setopt auto_cd

# C-s, C-qを無効にする。
setopt no_flow_control

## Shift-Tabで補完を戻す
bindkey "\e[Z" reverse-menu-complete

# docker command の補完
fpath=(~/.zsh/completion $fpath)

# pyenv のパスを通す
# 前提として、下記コマンドが実行されていること
# git clone https://github.com/pyenv/pyenv.git ~/.pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


###########################################################
# GCP関連
###########################################################
# gcloudコマンドのSDKをpython3で起動
export CLOUDSDK_PYTHON=python3

# 補足
# ~/.zsh_profile にGCPの設定を書いている


###########################################################
# AWS関連
###########################################################
# aws cliの補完
autoload bashcompinit && bashcompinit
complete -C '/usr/local/bin/aws_completer' aws

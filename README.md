# overview
Please input below commands.

# zsh
```zsh
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/.zsh_profile ~/.zsh_profile

mkdir -p ~/.zsh/completion
curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/zsh/_docker-compose > ~/dotfiles/zsh/completion/_docker-compose
ln -s ~/dotfiles/zsh/completion/_docker-compose ~/.zsh/completion/_docker-compose 
```

# vim 


スワップファイル,バックアップファイル,undoファイルの配置場所を指定
```zsh
mkdir -p ~/.vim/swap
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/undo
```

.vimrc, gvimrcにシンボリックリンクを貼る
```zsh
ln -s ~/dotfiles/vim/.gvimrc ~/.gvimrc
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
```

dein.vim
```zsh
mkdir -p ~/.cache/dein 
cd ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/tmp/dein

brew install yarn
mkdir -p ~/.vim/rc
ln -s ~/dotfiles/vim/rc/dein.toml  ~/.vim/rc/dein.toml 
ln -s ~/dotfiles/vim/rc/dein_lazy.toml  ~/.vim/rc/dein_lazy.toml 
/dein_lazy.toml
```

# vscode

for mac setting
```zsh
ln -s ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
```
If you use windows or linux, use below path.
* Windows %APPDATA%\Code\User\settings.json
* Linux $HOME/.config/Code/User/settings.json


# jetbrains

```
ln -s ~/dotfiles/jetbrains/.ideavimrc  ~/.ideavimrc
```


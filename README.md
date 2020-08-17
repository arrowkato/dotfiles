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

# vscode

# jetbrains
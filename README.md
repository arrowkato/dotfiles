# overview
Please input below commands.

## karabiner
install [karabiner](https://karabiner-elements.pqrs.org/)

set my keybindings
```zsh
ln -s ~/dotfiles/karabiner/my_options.json ~/.config/karabiner/assets/complex_modifications/my_option.json
```

You may restart karabiner-elements in order to apply my_options.json

apply my_optons.json settings to karabiner
1. click karabiner icon like □ in toolber
2. clicke "Preferences.."
3. open Karabiner-Elements Preferences
4. click "complex_modifications" tab
5. click "Add rule" button
6. click "+Enable" button to want to apply.



# zsh
```zsh
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/.zsh_profile ~/.zsh_profile

mkdir -p ~/.zsh/completion
curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/zsh/_docker-compose > ~/dotfiles/zsh/completion/_docker-compose
ln -s ~/dotfiles/zsh/completion/_docker-compose ~/.zsh/completion/_docker-compose
```

# vim

assign path of swap, backup, undo files.
```zsh
mkdir -p ~/.vim/swap
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/undo
```

make symbolic link of .vimrc, gvimrc
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

for Mac setting
```zsh
ln -s ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
```
If you use windows or linux, use below path.
* Windows %APPDATA%\Code\User\settings.json
* Linux $HOME/.config/Code/User/settings.json

Make shellcheck and hadolint work in the CLI with the same settings as vscode
```zsh
brew install shellcheck
brew install hadolint
```



# jetbrains

```zsh
ln -s ~/dotfiles/jetbrains/.ideavimrc  ~/.ideavimrc
```


# linter formmatter

```zsh
ln -s ~/dotfiles/linter_formatter/.hadolint.yaml <your_vscode_project_root_dir>/.hadolint.yaml
ln -s ~/dotfiles/linter_formatter/.shellcheckrc <your_vscode_project_root_dir>/.shellcheckrc
```

## Using shellcheck in CLI

- [What's shellcheck?](https://www.shellcheck.net/)
- [GitHub](https://github.com/koalaman/shellcheck)

install shellcheck in Mac
```zsh
brew install shellcheck
```
how to use shellcheck command
```zsh
shellcheck <shellscript_file_path>
```

## Using hadolint in CLI

[What's hadolint](https://github.com/hadolint/hadolint)

install hadolint in Mac
```zsh
brew install hadolint
```
how to use hadolint command
```zsh
hadolint <your_DOCKERFILE>
```

## Using textlint

I set up textlint each project.
You can install textlint into global npm env too.

install textlint
```zsh
cd <your project root dir>
npm install --save-dev textlint 
```

install textlint-rule package

```zsh
cd <your project root dir>
npm install --save-dev \
    textlint-rule-preset-ja-spacing \
    textlint-rule-preset-ja-technical-writing
```


install prh: dictonary for textlint
```zsh
cd <your project root dir>
npm install --save-dev prh
```

download "your" .textlintrc and prh.yml
or make sybolic links to your common them.

download
```zsh
cd <your project root dir>
# format
curl -O <your .textlintrc url>
# e.g  arrowkato's setting
curl -O https://github.com/arrowkato/dotfiles/blob/master/textlint/.textlintrc

# format
curl -O <your dictonary files of prh url>
# e.g  arrowkato's setting
curl -O https://github.com/arrowkato/dotfiles/tree/master/textlint/prh_dict
```

sybolic links
```zsh
cd <project root >

# format
ln -s <your common .textlintrc on your file system> .textlintrc
# e.g  arrowkato's setting
ln -s ~/dotfiles/textlint/.textlintrc .textlintrc

# format
ln -s <your common prh.yml on your file system> .prh
# e.g  arrowkato's setting
ln -s ~/dotfiles/textlint/prh_dict .prh
```

add .textlintrc and prh.yml to .gitignore, if you want.


install VSCode extensions: [vscode-textlint](https://marketplace.visualstudio.com/items?itemName=taichi.vscode-textlint) and [prh - ProofReadingHelper](https://marketplace.visualstudio.com/items?itemName=vvakame.vscode-prh-extention)

add below setting to your settings.json of VSCode
```json
    "prh.configFiles": [
        "./.prh/base.yml",
    ]
```
This path means relative path from each VSCode project root directory.
You can use absolute paths too.

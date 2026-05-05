# Atsune's Nix config

## Nix config layout

`nix-config/` is managed with this structure:

```text
nix-config/
├── flake.nix
├── flake.lock
├── hosts/
│   └── m5-macbook-air/
│       ├── darwin-configuration.nix
│       └── home.nix
├── modules/
│   └── dotfiles.nix
└── dotfiles/
	├── .editorconfig
	├── .latexmkrc
	├── .tmux.conf
	├── .vimrc
	├── .zshrc
	└── .config/
		├── cmux/
		│	└── settings.json
		└── nvim/
			└── init.vim
```

## Install

Run the following commands to install this configuration:

```console
# clone this repository
git clone https://github.com/AtsuneMogi/nix-config
# run install script
./install.sh
```

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

First, navigate to (or create) the `~/.config` directory:

```console
# Create ~/.config if it doesn't exist and navigate to it
mkdir -p ~/.config
cd ~/.config
```

Then clone this repository and run the install script:

```console
# clone this repository
git clone https://github.com/AtsuneMogi/nix-config
cd nix-config
# run install script
./install.sh
```

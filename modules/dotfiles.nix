{ ... }: {
  home.file = {
    ".editorconfig".source = ../dotfiles/.editorconfig;
    ".latexmkrc".source = ../dotfiles/.latexmkrc;
    ".zshrc".source = ../dotfiles/.zshrc;
    ".vimrc".source = ../dotfiles/.vimrc;
    ".tmux.conf".source = ../dotfiles/.tmux.conf;
    ".config/nvim" = {
      source = ../dotfiles/.config/nvim;
      recursive = true;
    };
    ".config/cmux" = {
      source = ../dotfiles/.config/cmux;
      recursive = true;
    };
  };
}

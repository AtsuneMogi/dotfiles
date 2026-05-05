#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

link_nix_config_dotfiles() {
    local nix_dotfiles_dir="${SCRIPT_DIR}/dotfiles"
    local source_file relative_path target_file target_dir

    if [ ! -d "${nix_dotfiles_dir}" ]; then
        return
    fi

    echo "Linking nix-config dotfiles..."
    find "${nix_dotfiles_dir}" -type f | while IFS= read -r source_file; do
        relative_path="${source_file#${nix_dotfiles_dir}/}"
        target_file="${HOME}/${relative_path}"
        target_dir="$(dirname "${target_file}")"

        mkdir -p "${target_dir}"
        ln -sfn "${source_file}" "${target_file}"
        echo "  Linked: ${target_file} -> ${source_file}"
    done
    echo "Dotfiles linking completed!"
}

link_nix_config_dotfiles

# install vim-plug
echo "Installing vim-plug......"
# for Vim
curl -fLo "${HOME}/.vim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# for Neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo "Install completed!"

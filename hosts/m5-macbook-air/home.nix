{ pkgs, ... }: {
  imports = [
    ../../modules/dotfiles.nix
  ];

  home.username = "atsune";
  home.homeDirectory = "/Users/atsune"; # for macOS

  home.packages = with pkgs; [
    # --- dev tools ---
    platformio

    # --- CLI tools ---
    fastfetch
    gemini-cli
    htop
    openssh
    ranger
    wireshark-cli
  ];

  programs.home-manager.enable = true;
  home.stateVersion = "25.11";
}

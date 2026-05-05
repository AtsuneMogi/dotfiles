{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    darwin.url = "github:LnL7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, darwin, home-manager, ... }:
  let
    system = "aarch64-darwin";
  in {
    darwinConfigurations.atsune = darwin.lib.darwinSystem {
      inherit system;
      modules = [
        ./hosts/m5-macbook-air/darwin-configuration.nix

        home-manager.darwinModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.atsune = { pkgs, ... }: {
            imports = [ ./hosts/m5-macbook-air/home.nix ];
            home.homeDirectory = pkgs.lib.mkForce "/Users/atsune";
            home.username = pkgs.lib.mkForce "atsune";
          };
        }
      ];
    };
  };
}

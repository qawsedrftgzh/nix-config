{
  description = "A very basic flake";

  inputs = {
    nixpkgs-unstable.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
  };

  outputs = {
    nixpkgs,
    nixpkgs-unstable,
    ...
  } @ inputs: let
    pkgs-unstable = import nixpkgs-unstable {
      system = "x86_64-linux";
      config.allowUnfree = true;
    };
  in {
    nixosConfigurations = {
      nixos = inputs.nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          ./pkgs/default.nix
        ];
        specialArgs = {
          inherit inputs;
          inherit pkgs-unstable;
        };
      };
    };
  };
}

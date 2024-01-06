{
  description = "Fallout GRUB theme";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    flake-utils,
    nixpkgs,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {
          inherit system;
        };

        packages = {
          steins-gate-gt = pkgs.callPackage ./nix/pkgs/steins-gate.nix {};
          fallout-gt = pkgs.callPackage ./nix/pkgs/fallout.nix {};
        };
      in rec {
        inherit packages;

        defaultPackage = packages.fallout-gt;
      }
    );
}

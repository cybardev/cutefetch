{
  description = "cybardev/cutefetch";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixpkgs-unstable";
  };

  outputs = {nixpkgs, ...}: let
    forAllSystems = function:
      nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed (
        system: function nixpkgs.legacyPackages.${system}
      );
  in {
    devShells = forAllSystems (pkgs: {default = import ./shell.nix {inherit pkgs;};});

    legacyPackages = forAllSystems (pkgs: import ./. {inherit (pkgs) lib callPackage;});

    overlays.default = final: prev: {cutefetch = final.callPackage ./. {};};
  };
}

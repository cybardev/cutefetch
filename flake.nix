{
  description = "cybardev/cutefetch";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.11";
  };

  outputs = {nixpkgs, ...}: let
    forAllSystems = function:
      nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed (
        system: function nixpkgs.legacyPackages.${system}
      );
  in {
    devShells = forAllSystems (pkgs: {
      default = import ./shell.nix {inherit pkgs;};
    });
  };
}

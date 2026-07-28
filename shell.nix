{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShellNoCC {
  packages = with pkgs; [
    (callPackage ./. { })

    # Dev deps
    networkmanager
    xprop
    xdpyinfo
    wayland-utils
  ];
}

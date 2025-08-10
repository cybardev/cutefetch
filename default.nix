{
  pkgs,
  lib ? pkgs.lib,
}: let
  author = "cybardev";
  pname = "cutefetch";
  version = "3.1.1";
in
  pkgs.stdenvNoCC.mkDerivation {
    inherit pname;
    inherit version;

    src = ./.;

    nativeBuildInputs = [pkgs.makeWrapper];

    installPhase = ''
      runHook preInstall
      chmod +x ${pname}
      mkdir -p "$out/bin"
      cp ${pname} "$out/bin/"
      runHook postInstall
    '';

    postInstall = with pkgs; ''
      wrapProgram "$out/bin/${pname}" \
        --prefix PATH : ${
        lib.makeBinPath (
          [coreutils]
          ++ lib.optionals pkgs.stdenvNoCC.hostPlatform.isLinux [
            networkmanager
            xorg.xprop
            xorg.xdpyinfo
          ]
        )
      }
    '';

    meta = {
      description = "Tiny coloured fetch script with cute little animals";
      homepage = "https://github.com/${author}/${pname}";
      license = lib.licenses.gpl3Only;
      mainProgram = pname;
      platforms = lib.platforms.all;
    };
  }

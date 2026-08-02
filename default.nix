{
  lib,
  stdenvNoCC,
  makeWrapper,
  versionCheckHook,
  nix-update-script,
  coreutils,
  networkmanager,
  wayland-utils,
  xdpyinfo,
  xprop,
}:
let
  pname = "cutefetch";
  version = "3.3.0";
in
stdenvNoCC.mkDerivation {
  inherit pname;
  inherit version;

  src = ./.;

  nativeBuildInputs = [ makeWrapper ];

  installPhase = ''
    runHook preInstall
    chmod +x ${pname}
    mkdir -p "$out/bin"
    cp ${pname} "$out/bin/"
    runHook postInstall
  '';

  postInstall = ''
    wrapProgram "$out/bin/${pname}" \
      --prefix PATH : ${
        lib.makeBinPath (
          [ coreutils ]
          ++ lib.optionals stdenvNoCC.hostPlatform.isLinux [
            networkmanager
            xprop
            xdpyinfo
            wayland-utils
          ]
        )
      }
  '';

    nativeInstallCheckInputs = [ versionCheckHook ];
    versionCheckProgramArg = "-v";
    doInstallCheck = true;

    passthru.updateScript = nix-update-script { };

    meta = {
      description = "Tiny coloured fetch script with cute little animals";
      homepage = "https://github.com/cybardev/cutefetch";
      license = lib.licenses.gpl3Only;
      platforms = lib.platforms.unix;
      mainProgram = pname;
      maintainers = with lib.maintainers; [
        cybardev
        Kalitsune
      ];
    };
}

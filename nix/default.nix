{ pkgs, lib, src, ... }:

pkgs.stdenv.mkDerivation rec {
  pname = "matugen-autothemer";
  version = "b26401c"; # Mar 29 2026

  src = pkgs.fetchFromGitHub {
    owner = "luxingzhi27";
    repo = "matugen-autothemer-for-gnome-extension";
    rev = "b26401ce256595e3b17fd25b5c881f5cc5ea8f6b";
    hash = "sha256-Kpc1yGokWw3qyxW15YM8fCxL2DAa0+E5Ka4uFMrOPnM="; 
  };

  nativeBuildInputs = [
    pkgs.glib 
  ];

  uuid = "matugen-autothemer@luxingzhi27";


  installPhase = ''
    runHook preInstall

    
    targetDir="$out/share/gnome-shell/extensions/${uuid}"
    mkdir -p "$targetDir"

    
    cp -r * "$targetDir/"

    
    if [ -d "$targetDir/schemas" ]; then
      glib-compile-schemas "$targetDir/schemas"
    fi

    runHook postInstall
  '';

  meta = with pkgs.lib; {
    description = "Matugen autothemer for GNOME extension";
    homepage = "https://github.com/luxingzhi27/matugen-autothemer-for-gnome-extension";
    license = licenses.gpl3Plus; 
    platforms = platforms.linux;
    maintainers = [ ];
  };
}
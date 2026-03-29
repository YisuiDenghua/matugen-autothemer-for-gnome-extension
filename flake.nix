{
  description = "Matugen Autothemer GNOME Extension Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {

        packages.default = pkgs.callPackage ./nix/default.nix {
          src = self; 
        };

        
        devShells.default = pkgs.mkShell {
          buildInputs = [ pkgs.matugen pkgs.glib ];
        };
      }
    );
}
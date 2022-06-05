# Experimental flake interface to Nixpkgs.
# See https://github.com/NixOS/rfcs/pull/49 for details.
{
  description = "A collection of packages for gnames";
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs;
  };

  outputs = { self, nixpkgs }:
    let
    system = "x86_64-linux";
  pkgs = nixpkgs.legacyPackages.${system};

  in
    with pkgs; {
      legacyPackages.${system} = rec {

        inherit (callPackage ./gn-sources/myriatrix {})
          myriatrix_20_05
          myriatrix_21_02
          myriatrix_21_07
        ;
        myriatrix = myriatrix_21_07;

      };
    };
}

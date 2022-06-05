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
        gnparser = callPackage ../applications/gnparser { };

        inherit (callPackage ./gn-sources/col {})
          col_16_00
          col_17_00
          col_18_00
          col_19_00
          col_20_06
          col_21_06
          col_21_10
        ;
        col = col_21_10;

        inherit (callPackage ./gn-sources/myriatrix {})
          myriatrix_20_05
          myriatrix_21_02
          myriatrix_21_07
        ;
        myriatrix = myriatrix_21_07;

      };
    };
}

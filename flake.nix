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
        # APPLICATIONS
        gnparser = callPackage ./applications/gnparser { };

        # GlobalNames Data
        ## 001 The Catalogue Of Life
        inherit (callPackage ./data/gn-sources/col { })
          gn-col_16_00
          gn-col_17_00
          gn-col_18_00
          gn-col_19_00
          gn-col_20_06
          gn-col_21_06
          gn-col_21_10
          ;
        gn-col = gn-col_21_10;

        ## 005 Index Fungorum
        inherit (callPackage ./data/gn-sources/index-fungorum { })
          gn-index-fungorum_21_01
          ;
        gn-index-fungorum = gn-index-fungorum_21_01;

        ## 011 GBIF Taxonomic Backbone
        inherit (callPackage ./data/gn-sources/gbif { })
          gn-gbif_15_07
          gn-gbif_17_02
          gn-gbif_19_09
          gn-gbif_20_05
          gn-gbif_21_01
          gn-gbif_21_06
          gn-gbif_21_12
          ;
        gn-gbif = gn-gbif_21_12;

        ## 193 Myriatrix
        inherit (callPackage ./data/gn-sources/myriatrix { })
          gn-myriatrix_20_05
          gn-myriatrix_21_02
          gn-myriatrix_21_07
          ;
        gn-myriatrix = gn-myriatrix_21_07;


        # BIODIVERSITY DATA
        inherit (callPackage ./data/gnamesdb { })
          gnamesdb_22_01
          ;
        gnamesdb = gnamesdb_22_01;

        inherit (callPackage ./data/irmng { })
          irmng_14_01
          irmng_17_12
          irmng_18_03
          irmng_19_03
          irmng_20_03
          irmng_21_05
          irmng_22_05
          ;
        irmng = irmng_22_05;
      };
    };
}

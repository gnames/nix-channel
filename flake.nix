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

      myriatrix-20-05 = callPackage ./gn-sources/myriatrix/20-05 {};
      myriatrix-21-02 = callPackage ./gn-sources/myriatrix/21-02 {};
      myriatrix-21-07 = callPackage ./gn-sources/myriatrix/21-07 {};
      myriatrix = myriatrix-21-07;
    };
};
}

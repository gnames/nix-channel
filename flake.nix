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
    myriatrix = callPackage ./gn-sources/myriatrix/21-07;
  };
}

{ pkgs ? import <nixpkgs> { } }:

rec {
  home-manager = pkgs.callPackage ./home-manager { path = toString ./.; };

  install = with pkgs; {
    myriatrix-20-05 = callPackage ./gn-sources/myriatrix/20-05;
    myriatrix-21-02 = callPackage ./gn-sources/myriatrix/21-02;
    myriatrix-21-07 = callPackage ./gn-sources/myriatrix/21-07;
    myriatrix = myriatrix-21-07;

    path = ./.;
  };
}

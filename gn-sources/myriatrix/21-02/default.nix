{ stdenv, fetchurl }:

let
src = import "../../sources.nix";
name = "myriatrix-21-02";

in 
stdenv.mkDerivation {
  inherit name;
  src = fetchurl {
    url = src.url + src.${name}.file;
    sha256 = srs.${name}.sha;
  };
}

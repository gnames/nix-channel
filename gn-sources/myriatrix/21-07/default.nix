{ stdenv, fetchurl }:

let
src = import "../../sources.nix";

in 
stdenv.mkDerivation {
  name = "myriatrix-20-05";
  src = fetchurl {
    url = src.url + src.myriatrix-20-05.file;
    sha256 = srs.myriatrix-20-05.sha;
  };
}

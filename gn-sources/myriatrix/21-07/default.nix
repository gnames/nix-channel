{ lib, stdenv, fetchurl }:

let
data = import ../../sources.nix;

in 
stdenv.mkDerivation rec {
  pname = "myriatrix";
  version = "20-05";
  name = pname + "-" + version;
  src = fetchurl {
    url = data.url + data.${name}.file;
    sha256 = data.${name}.sha256;
  };

  meta = with lib; {
    description = "Myriatrix database";
    homepage = "http://myriatrix.myspecies.info";
    license = licenses.cc0;
    maintainers = with maintainers; [ "dimus" ];
  };
}

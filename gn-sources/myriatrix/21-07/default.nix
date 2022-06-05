{ lib, stdenv, fetchurl, coreutils }:

let
data = import ../../sources.nix;

in 
stdenv.mkDerivation rec {
  pname = "myriatrix";
  version = "21-07";
  name = pname + "-" + version;

  src = fetchurl {
    url = data.url + data.${name}.file;
    sha256 = data.${name}.sha256;
  };
  
  unpackPhase = "true";
    
  installPhase = ''
    mkdir -p $out/share
    
    cp $src $out/share
  '';
  
  meta = with lib; {
    description = "Myriatrix database";
    homepage = "http://myriatrix.myspecies.info";
    license = licenses.cc0;
    maintainers = with maintainers; [ "dimus" ];
  };
}

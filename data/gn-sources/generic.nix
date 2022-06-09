{ lib, stdenv, fetchurl, pname, version, description, homepage }:

let
data = import ../sources.nix;
dir = "share/gn/data-sources";

in

stdenv.mkDerivation rec {
  inherit pname version;
  name = pname + "-" + version;

  src = fetchurl {
    url = data.gn.url + data.${name}.file;
    sha256 = data.${name}.sha256;
  };

  unpackPhase = "true";

  installPhase = ''
    mkdir -p $out/${dir}

    cp $src $out/${dir}/${pname}.tar.gz
  '';

  meta = with lib; {
    inherit description homepage;
    license = licenses.cc0;
    maintainers = with maintainers; [ "dimus" ];
  };
}

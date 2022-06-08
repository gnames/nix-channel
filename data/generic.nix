{ lib, stdenv, fetchurl, url, pname, version, description, homepage }:

let
data = import ./sources.nix;
dir = "share/data";

in
stdenv.mkDerivation rec {
  inherit pname version;
  name = pname + "-" + version;

  src = fetchurl {
    url = url + data.${name}.file;
    sha256 = data.${name}.sha256;
  };

  unpackPhase = "true";

  installPhase = ''
    mkdir -p $out/${dir}

    ext="tar.gz"
    case $src in *.zip)
      ext="zip"
      ;;
    esac

    cp $src $out/${dir}/${pname}.$ext
  '';

  meta = with lib; {
    inherit description homepage;
    license = licenses.cc0;
    maintainers = with maintainers; [ "dimus" ];
  };
}

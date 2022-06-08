{ lib, stdenv, fetchurl }:

let
generic = import ../generic.nix;
pname = "gn-index-fungorum";
description = "Index Fungorum database";
homepage = "http://www.speciesfungorum.org";

in {
 gn-index-fungorum_21_01 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "21-01";
 };
}

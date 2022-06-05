{ lib, stdenv, fetchurl }:

let
generic = import ../generic.nix;
pname = "irmng";
description = "IRMNG";
homepage = "https://www.irmng.org/export";
url = "https://www.irmng.org/export/";

in {
 irmng_22_05 = generic {
   inherit pname description homepage lib stdenv fetchurl url;
   version = "22-05";
 };
}

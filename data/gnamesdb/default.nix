{ lib, stdenv, fetchurl }:

let
generic = import ../generic.nix;
pname = "gnamesdb";
description = "Database for gnverifier and gnames API";
homepage = "https://github.com/gnames/gnames";
url = "http://opendata.globalnames.org/dumps/";

in {
 gnamesdb_22_01 = generic {
   inherit pname description homepage lib stdenv fetchurl url;
   version = "22-01";
 };
}

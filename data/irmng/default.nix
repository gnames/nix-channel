{ lib, stdenv, fetchurl }:

let
generic = import ../generic.nix;
pname = "irmng";
description = "IRMNG";
homepage = "https://www.irmng.org/export";
url = "https://www.irmng.org/export/";

in {
 irmng_14_01 = generic {
   inherit pname description homepage lib stdenv fetchurl url;
   version = "14-01";
 };

 irmng_17_12 = generic {
   inherit pname description homepage lib stdenv fetchurl url;
   version = "17-12";
 };

 irmng_18_03 = generic {
   inherit pname description homepage lib stdenv fetchurl url;
   version = "18-03";
 };

 irmng_19_03 = generic {
   inherit pname description homepage lib stdenv fetchurl url;
   version = "19-03";
 };

 irmng_20_03 = generic {
   inherit pname description homepage lib stdenv fetchurl url;
   version = "20-03";
 };

 irmng_21_05 = generic {
   inherit pname description homepage lib stdenv fetchurl url;
   version = "21-05";
 };

 irmng_22_05 = generic {
   inherit pname description homepage lib stdenv fetchurl url;
   version = "22-05";
 };
}

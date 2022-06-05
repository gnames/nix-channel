{ lib, stdenv, fetchurl }:

let
generic = import ../generic.nix;
pname = "gn-col";
description = "The Catalogue of Life database";
homepage = "https://catalogueoflife.org";

in {
 gn-col_16_00 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "16-00";
 };

 gn-col_17_00 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "17-00";
 };

 gn-col_18_00 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "18-00";
 };

 gn-col_19_00 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "19-00";
 };

 gn-col_20_06 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "20-06";
 };

 gn-col_21_06 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "21-06";
 };

 gn-col_21_10 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "21-10";
 };
}

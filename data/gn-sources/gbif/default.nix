{ lib, stdenv, fetchurl }:

let
generic = import ../generic.nix;
pname = "gn-gbif";
description = "The Taxonomic Backbone of Global Biodiversity Information Facility";
homepage = "https://www.gbif.org/dataset/d7dddbf4-2cf0-4f39-9b2a-bb099caae36c";

in {
 gn-gbif_15_07 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "15-07";
 };

 gn-gbif_17_02 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "17-02";
 };

 gn-gbif_19_09 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "19-09";
 };

 gn-gbif_20_05 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "20-05";
 };

 gn-gbif_21_01 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "21-01";
 };

 gn-gbif_21_06 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "21-06";
 };

 gn-gbif_21_12 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "21-12";
 };
}

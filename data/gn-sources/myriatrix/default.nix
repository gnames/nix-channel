{ lib, stdenv, fetchurl }:

let
generic = import ../generic.nix;
pname = "myriatrix";
description = "Myriatrix database";
homepage = "http://myriatrix.myspecies.info";

in {
 myriatrix_20_05 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "20-05";
 };
 myriatrix_21_02 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "21-02";
 };
 myriatrix_21_07 = generic {
   inherit pname description homepage lib stdenv fetchurl;
   version = "21-07";
 };
}

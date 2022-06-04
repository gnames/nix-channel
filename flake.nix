{
  description = "nixos-hardware";

  outputs = { self }: {
    nixosModules = {
      myriatrix-20-05 = import ./gn-sources/myriatrix/20-05;
      myriatrix-21-02 = import ./gn-sources/myriatrix/21-02;
      myriatrix-21-07 = import ./gn-sources/myriatrix/21-07;
    };
  };
}

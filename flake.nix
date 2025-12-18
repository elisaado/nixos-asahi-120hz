{
  outputs = { ... }: {
    nixosModules.default = {
      boot.kernelPatches = [{
        name = "120hz";
        patch = ./120hz.patch;
      }];
    };
  };
}

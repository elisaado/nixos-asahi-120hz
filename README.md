# NixOS Asahi 120Hz

## Purpose

See [https://github.com/AsahiLinux/linux/pull/428]

## Example

To use this flake, your flake should look something like the following.
Note the inclusion of this repository as an input called `asahi-120hz`, its inclusion in the arguments of the `output` lambda, and the use of the provided module in the NixOS configuration of your host.

```nix
{
  inputs = {
    ...
    asahi-120hz.url = "github:elisaado/nixos-asahi-120hz";
  };
  outputs =
    {
      self,
      ...
      asahi-120hz
    }@inputs:
    {
      nixosConfigurations.<your hostname> = nixpkgs.lib.nixosSystem {
        system = "aarch64-linux";
        modules = [
          ./configuration.nix
          ...
          asahi-120hz.nixosModules.default
        ];
      ];
    };
};
```

{ inputs, ... }:
let
  # Modules for the flakeModules output and the default module
  defaultModules = {
    nixvimModules = ./nixvimModules.nix;
    nixvimConfigurations = ./nixvimConfigurations.nix;
    auto = ./auto.nix;
  };

  # Modules for the flakeModules output, but not the default module
  extraModules = {
    default.imports = builtins.attrValues defaultModules;
  };
in
{
  imports = [
    inputs.flake-parts.flakeModules.flakeModules
    extraModules.default
  ];

  flake.flakeModules = defaultModules // extraModules;
}

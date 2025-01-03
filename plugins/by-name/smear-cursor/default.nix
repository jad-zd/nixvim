{ lib, ... }:
lib.nixvim.plugins.mkNeovimPlugin {
  name = "smear-cursor";
  packPathName = "smear-cursor.nvim";
  package = "smear-cursor-nvim";
  moduleName = "smear_cursor";

  maintainers = [ lib.maintainers.GaetanLepage ];

  settingsOptions = import ./settings-options.nix lib;

  settingsExample = {
    stiffness = 0.8;
    trailing_stiffness = 0.5;
    distance_stop_animating = 0.5;
    hide_target_hack = false;
  };
}

let
  mkExtension = import ./_mk-extension.nix;
in
mkExtension {
  name = "bibtex";
  package = "telescope-bibtex-nvim";
}

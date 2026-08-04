{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";

    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      perSystem = { system, ... }: {
        packages.default =
          (inputs.nvf.lib.neovimConfiguration {
            pkgs = inputs.nixpkgs.legacyPackages.${system};
            modules = [ ./modules ];
          }).neovim;
      };
      systems = [
        "x86_64-linux"
        "aarch64-darwin"
        "aarch64-linux"
      ];
    };
}

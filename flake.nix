{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    import-tree.url = "github:denful/import-tree";

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
            pkgs = import inputs.nixpkgs {
              inherit system;
              config.allowUnfreePredicate =
                pkg: builtins.elem (inputs.nixpkgs.lib.getName pkg) [ "wezterm.nvim" ];
            };
            modules = [ (inputs.import-tree ./modules) ];
          }).neovim;
      };
      systems = [
        "x86_64-linux"
        "aarch64-darwin"
        "aarch64-linux"
      ];
    };
}

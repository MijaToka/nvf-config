{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nvf,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
    in
    {
      packages.${system}.default =
        (nvf.lib.neovimConfiguration {
          pkgs = nixpkgs.legacyPackages."x86_64-linux";
          modules = [ ./modules ];
        }).neovim;
    };
}

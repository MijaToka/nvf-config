{ pkgs, ... }:
{
  vim.extraPlugins = {
    remote-nvim = {
      package = pkgs.vimPlugins.remote-nvim-nvim;
      setup = "require('remote-nvim').setup()";
    };
  };
}

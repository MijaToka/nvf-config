{ pkgs, ... }:
{
  vim.extraPlugins = {
    yazi = {
      package = pkgs.vimPlugins.yazi-nvim;
    };
  };
}

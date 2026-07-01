{ pkgs, ... }:
{
  vim.extraPlugins = {
    remote-sshfs = {
      package = pkgs.vimPlugins.remote-sshfs-nvim;
      setup = ''
        require('remote-sshfs').setup({})
      '';
    };
  };
}

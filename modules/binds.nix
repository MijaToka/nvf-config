{
  vim.binds = {
    whichKey = {
      enable = true;
      setupOpts = {
        preset = "helix"; # The style of the which key pop up options are helix classic and rounded
      };
    };
    cheatsheet.enable = true;
  };
  vim.globals = {
    mapleader = " ";
  };

  vim.maps = {
    normal = {
      "<leader>pv".action = ":Ex<CR>";
      "<leader>t".action = ":ToggleTerm<CR>";
    };
    visual = { };
    insert = { };
    command = { };
  };
}

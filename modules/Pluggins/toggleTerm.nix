{
  vim = {
    terminal.toggleterm = {
      enable = true;
      lazygit.enable = true;
      setupOpts = {
        direction = "float";
      };
    };

    maps = {
      normal."<leader>t" = {
        action = ":ToggleTerm<CR>";
        desc = "ToggleTerm";
      };
    };
  };
}

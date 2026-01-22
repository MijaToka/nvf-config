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
      normal."<leader>tt" = {
        action = ":ToggleTerm<CR>";
        desc = "ToggleTerm";
      };
    };
  };
}

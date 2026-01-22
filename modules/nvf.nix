{
  vim = {
    viAlias = true;
    vimAlias = true;

    options = {
      tabstop = 2;
      shiftwidth = 2;
      termguicolors = true;
    };

    debugMode = {
      enable = false;
      level = 16;
      logFile = "/tmp/nvim.log";
    };

    dashboard = {
      dashboard-nvim.enable = false;
      alpha.enable = true;
    };

    utility = { };

    visuals = {
      nvim-scrollbar.enable = true;
      nvim-web-devicons.enable = true;
      nvim-cursorline.enable = true;
      cinnamon-nvim.enable = true;
      fidget-nvim.enable = true;

      highlight-undo.enable = true;
      indent-blankline.enable = true;

      # Fun
      cellular-automaton.enable = false;
    };

    clipboard.enable = true;
  };
}

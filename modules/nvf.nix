{
  vim = {
    viAlias = true;
    vimAlias = true;

    debugMode = {
      enable = false;
      level = 16;
      logFile = "/tmp/nvim.log";
    };

    statusline = {
      lualine = {
        enable = true;
        theme = "auto";
      };
    };

    options = {
      tabstop = 2;
      shiftwidth = 2;
      termguicolors = true;
    };

    autopairs.nvim-autopairs.enable = true;
    autocomplete.blink-cmp.enable = true;
    snippets.luasnip.enable = true;

    filetree = {
      neo-tree.enable = true;
    };

    tabline = {
      nvimBufferline.enable = true;
    };

    treesitter.context.enable = true;
    telescope.enable = true;

    minimap = {
      minimap-vim.enable = true;
      codewindow.enable = true;
    };

    dashboard = {
      dashboard-nvim.enable = false;
      alpha.enable = true;
    };

    notify = {
      nvim-notify.enable = true;
    };

    projects = {
      project-nvim.enable = true;
    };

    utility = { };

    debugger = {
      nvim-dap = {
        enable = true;
        ui.enable = true;
      };
    };

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
  };
}

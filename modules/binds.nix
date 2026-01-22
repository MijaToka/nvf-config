{
  vim = {
    binds = {
      whichKey = {
        enable = true;
        setupOpts = {
          preset = "helix"; # The style of the which key pop up options are helix classic and rounded
        };
      };
      cheatsheet.enable = true;
    };
    globals = {
      mapleader = " ";
    };

    maps = {
      normal = {
        "<leader>pv" = {
          action = ":Ex<CR>";
          desc = "Project view";
        };
        "<leader>tp" = {
          action = ":TypstPreview document<CR>";
          desc = "Typst preview";
        };
      };
      visual = { };
      insert = { };
      command = { };
    };
  };
}

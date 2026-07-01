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

    keymaps = [
      {
        desc = "Project view";
        key = "<leader>pv";
        mode = "n";
        action = ":Ex<CR>";
      }
      {
        desc = "Typst preview";
        key = "<leader>tp";
        mode = "n";
        action = ":TypstPreview document<CR>";
      }
      {
        desc = "Open terminal window";
        key = "<leader>tw";
        mode = "n";
        action = ":terminal<CR>";
      }
      {
        desc = "ToggleTerm";
        key = "<leader>tt";
        mode = "n";
        action = ":ToggleTerm<CR>";
      }
      {
        desc = "Open yazi";
        key = "<leader>py";
        mode = "n";
        action = ":Yazi<CR>";
      }
      {
        key = "<esc><esc>";
        mode = "t";
        action = "<C-\\><C-n>";
      }
    ];
  };
}

{ pkgs, ... }: {
  vim = {
    extraPlugins.molten-nvim = {
      package = pkgs.vimPlugins.molten-nvim;

      setup = ''
        vim.g.magma_automatically_open_output = false
        vim.g.magma_image_provider = "image.nvim"
      '';
    };

    maps = {
      normal = {
        "<leader>ri" = {
          action = ":MoltenInit<CR>";
          desc = "Molten Init";
        };
        "<leader>rr" = {
          action = ":MoltenEvaluateLine<CR>";
          desc = "Molten Evaluate Line";
        };
        "<leader>rc" = {
          action = ":MoltenReevaluateCell<CR>";
          desc = "Molten Evaluate Line";
        };
      };
      visual = {
        "<leader>r" = {
          action = "<C-u>MoltenEvaluateVisual<CR>gv";
          desc = "Evaulate visual selection";
        };
      };
    };

    withPython3 = true;
    python3Packages = [
      "pynvim"
      "jupyter-client"
      "ueberzug"
      "pillow"
      "cairosvg"
      "pnglatex"
      "plotly"
      "pyperclip"
      "requests"
      "websocket-client"
      "nbformat"
    ];
  };
}

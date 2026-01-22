{
  vim = {
    autocomplete.blink-cmp.enable = true;

    languages = {
      enableTreesitter = true;
      enableFormat = true;
      enableDAP = true;
      enableExtraDiagnostics = true;

      bash = {
        enable = true;
        format.enable = true;
        lsp.enable = true;
      };

      clang = {
        enable = true;
        cHeader = true;
        dap.enable = true;
        lsp.enable = true;
      };

      nix = {
        enable = true;

        format = {
          enable = true;
          type = [ "alejandra" ];
        };

        lsp = {
          enable = true;
          servers = [ "nixd" ];
        };
        extraDiagnostics = {
          enable = true;
          types = [
            "statix"
            "deadnix"
          ];
        };
      };
      markdown = {
        enable = true;
        format.enable = true;
        lsp.enable = true;
        extensions = {
          markview-nvim.enable = false;
          render-markdown-nvim.enable = true;
        };
      };

      python = {
        enable = true;
        format.type = [ "black" ];
      };

      css = {
        enable = true;
        format.enable = true;
        lsp.enable = true;
      };

      typst = {
        enable = true;
        format.enable = true;
        lsp.enable = true;
        treesitter.enable = true;
        extensions = {
          typst-preview-nvim.enable = true;
        };
      };

      qml = {
        enable = true;
        format.enable = true;
        lsp.enable = true;
      };
    };

  };
}

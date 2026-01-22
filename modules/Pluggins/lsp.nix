{
  vim = {
    lsp = {
      enable = true;

      formatOnSave = true;
      lspkind.enable = false;
      lightbulb.enable = true;
      nul-ls.enable = true;

      lspsaga = {
        enable = true;
        setupOpts = {
          lightbulb.enable = false;
        };
      };

      trouble.enable = true;
      lspSignature.enable = false;
      otter-nvim.enable = true;
      nvim-docs-view.enable = true;

      servers = {
        "nixd".init_options.nixpkgs.expr = "import <nixpkgs> { }";
      };
    };

    ui.borders.plugins.lspsaga = {
      enable = true;
      style = "rounded";
    };
  };
}

{
  vim = {
    lsp = {
      enable = true;

      formatOnSave = true;
      lspkind.enable = false;
      lightbulb.enable = true;
      lspsaga.enable = true;
      trouble.enable = true;
      lspSignature.enable = false;
      otter-nvim.enable = true;
      nvim-docs-view.enable = true;

      servers = {
        qmlls = {};
      };
    };

    languages = {
      enableTreesitter = true;
      enableExtraDiagnostics = true;
      enableFormat = true;

      nix.enable = true;
      markdown.enable = true;

      python.enable = true;
      clang.enable = true;
      bash.enable = true;
      css.enable = true;
      typst.enable = true;
    };

    diagnostics = {
      enable = true;

      config = {
        virtual_text = true;
      };

      nvim-lint = {
        enable = true;
      };
    };
  };
}

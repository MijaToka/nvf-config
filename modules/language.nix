{
  vim.lsp = {
    enable = true;

    formatOnSave = true;
    lspkind.enable = false;
    lightbulb.enable = true;
    lspsaga.enable = false;
    trouble.enable = true;
    lspSignature.enable = false;
    otter-nvim.enable = true;
    nvim-docs-view.enable = true;
  };

  vim.languages = {
    enableTreesitter = true;

    nix.enable = true;
    markdown.enable = true;

    python.enable = true;
    clang.enable = true;
    bash.enable = true;
    css.enable = true;
  };
}

{
  vim.snippets.luasnip.customSnippets.snipmate.nix = [
    {
      trigger = "mkOption";
      body = ''
        mkOption {
          type = $1;
          default = $2;
          description = $3;
          example = $4;
        }
      '';
    }
  ];
}

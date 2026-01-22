let
  treeSitterLanguages = [
    "bash"
    "clang"
    "css"
    #"go"
    #"html"
    #"java"
    #"js"
    "json"
    #"kotlin"
    #"lua"
    "markdown"
    "nix"
    "python"
    #"rust"
    #"sql"
    #"toml"
    #"tsx"
    #"typescript"
    "yaml"
    "zig"

    # Rarely Used or Niche Today
    # "assembly"
    # "astro"
    # "clojure"
    # "elixir"
    # "elm"
    # "erlang"
    # "fennel"
    # "fish"
    # "haskell"
    # "julia"
    # "latex"
    # "ocaml"
    # "php"
    # "r"
    # "ruby"
    # "scala"
    # "svelte"
    # "swift"
    "typst"
    # "vue"
  ];
  treesitterEnables = builtins.listToAttrs (builtins.map (
      lang: {
        name = lang;
        value = {
          treesitter.enable = true;
        };
      }
    )
    treeSitterLanguages);
in {
  vim.treesitter = {
    enable = true;
    fold = true;
    context.enable = true;
    highlight.enable = true;
  };

  vim.languages =
    {
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;
    }
    // treesitterEnables;
}

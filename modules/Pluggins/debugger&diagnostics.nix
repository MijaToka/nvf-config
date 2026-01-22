{
  vim = {
    debugger = {
      nvim-dap = {
        enable = true;
        ui.enable = true;
      };
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
